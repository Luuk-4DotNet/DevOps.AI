#!/usr/bin/env bash
# Adds the variables from the project's .env file to the system environment.
#
# - Writes them to a managed block in your shell profile (~/.zshrc or ~/.bash_profile),
#   so every new terminal gets them. Re-running the script replaces the block.
# - On macOS, also sets them in the launchd session (launchctl setenv) so GUI apps
#   such as IDEs and desktop apps see them. These are lost on reboot; re-run the script
#   or add a LaunchAgent if you need them to survive a restart.
#
# Usage: scripts/set-env.sh [path/to/.env]

set -eo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ENV_FILE="${1:-$ROOT_DIR/.env}"
BEGIN_MARKER="# >>> DevOps.AI env >>>"
END_MARKER="# <<< DevOps.AI env <<<"

if [[ ! -f "$ENV_FILE" ]]; then
  echo "Env file not found: $ENV_FILE" >&2
  exit 1
fi

case "$(basename "${SHELL:-/bin/zsh}")" in
  zsh) PROFILE="$HOME/.zshrc" ;;
  bash) PROFILE="$HOME/.bash_profile" ;;
  *) PROFILE="$HOME/.profile" ;;
esac

KEYS=()
VALUES=()

while IFS= read -r line || [[ -n "$line" ]]; do
  line="${line%$'\r'}"
  case "$line" in
    ''|\#*) continue ;;
  esac
  if [[ ! "$line" =~ ^[[:space:]]*(export[[:space:]]+)?([A-Za-z_][A-Za-z0-9_]*)=(.*)$ ]]; then
    echo "Skipping invalid line: $line" >&2
    continue
  fi
  key="${BASH_REMATCH[2]}"
  value="${BASH_REMATCH[3]}"

  # Strip one pair of matching surrounding quotes.
  case "$value" in
    \"*\") value="${value:1:${#value}-2}" ;;
    \'*\') value="${value:1:${#value}-2}" ;;
  esac

  # Placeholders such as <your-token> are not real values; skip them.
  case "$value" in
    *"<"*">"*)
      echo "Skipping $key: value is still a placeholder" >&2
      continue
      ;;
  esac

  KEYS+=("$key")
  VALUES+=("$value")
done < "$ENV_FILE"

if [[ ${#KEYS[@]} -eq 0 ]]; then
  echo "No usable variables found in $ENV_FILE" >&2
  exit 1
fi

# Build the managed block for the shell profile. printf %q keeps values shell-safe.
block="$BEGIN_MARKER"
for i in "${!KEYS[@]}"; do
  printf -v quoted '%q' "${VALUES[$i]}"
  block+=$'\n'"export ${KEYS[$i]}=${quoted}"
done
block+=$'\n'"$END_MARKER"

touch "$PROFILE"
tmp_file="$(mktemp)"
awk -v begin="$BEGIN_MARKER" -v end="$END_MARKER" '
  $0 == begin { skip = 1 }
  !skip { print }
  $0 == end { skip = 0 }
' "$PROFILE" > "$tmp_file"
printf '\n%s\n' "$block" >> "$tmp_file"
mv "$tmp_file" "$PROFILE"

if [[ "$(uname -s)" == "Darwin" ]]; then
  for i in "${!KEYS[@]}"; do
    launchctl setenv "${KEYS[$i]}" "${VALUES[$i]}"
  done
fi

echo "Set ${#KEYS[@]} variable(s) in $PROFILE:"
for key in "${KEYS[@]}"; do
  echo "  - $key"
done
echo "Open a new terminal or run: source $PROFILE"
