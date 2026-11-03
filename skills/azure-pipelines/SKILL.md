---
name: azure-pipelines
description: Azure Pipelines Skill
---
# Azure Pipelines Skill

This skill provides expert guidance for Azure Pipelines. Covers troubleshooting, best practices, decision making, architecture & design patterns, limits & quotas, security, configuration, integrations & coding patterns, and deployment. It combines local quick-reference content with remote documentation fetching capabilities.

## How to Use This Skill

> **IMPORTANT for Agent**: Use the **Category Index** below to locate relevant sections. For categories with line ranges (e.g., `L35-L120`), use `read_file` with the specified lines. For categories with file links (e.g., `[security.md](security.md)`), use `read_file` on the linked reference file

> **IMPORTANT for Agent**: If `metadata.generated_at` is more than 3 months old, suggest the user pull the latest version from the repository. If `mcp_microsoftdocs` tools are not available, suggest the user install it: [Installation Guide](https://github.com/MicrosoftDocs/mcp/blob/main/README.md)

This skill requires **network access** to fetch documentation content:
- **Preferred**: Use `mcp_microsoftdocs:microsoft_docs_fetch` with query string `from=learn-agent-skill`. Returns Markdown.
- **Fallback**: Use `fetch_webpage` with query string `from=learn-agent-skill&accept=text/markdown`. Returns Markdown.

## Category Index

| Category | Lines | Description |
|----------|-------|-------------|
| Troubleshooting | L37-L47 | Diagnosing and fixing Azure Pipelines issues: service connection/auth problems, web app deploy failures, triggers, stuck jobs, and using logs to debug run failures. |
| Best Practices | L48-L58 | Best practices for faster, reliable pipelines: caching, cross-platform scripts, handling flaky tests, parallel test execution (incl. VSTest), Test Impact Analysis, and UI test configuration. |
| Decision Making | L59-L65 | Guides for migrating CI/CD pipelines to Azure Pipelines, including from Jenkins/Travis and from classic UI pipelines to YAML, with patterns, pitfalls, and safe migration steps. |
| Architecture & Design Patterns | L66-L73 | Guidance on end-to-end CI/CD and DevOps architectures for Azure: baseline pipeline patterns, Web App deployment design, and IaaS/VM-focused DevTest and production pipelines. |
| Limits & Quotas | L74-L83 | Limits, quotas, and capacity for Azure Pipelines: hosted agent caps, image deprecation, parallel jobs, agent pool concurrency, large package handling, and retention policy configuration. |
| Security | L84-L130 | Securing Azure Pipelines: agent auth, service connections, secrets/Key Vault, permissions, approvals/checks, secure variables/templates, artifact/repo protection, and compliance policies. |
| Configuration | L131-L487 | Configuring Azure Pipelines YAML/classic pipelines: agents, triggers, stages/jobs/steps, variables, environments, artifacts, and detailed setup for built-in and security-related tasks. |
| Integrations & Coding Patterns | L488-L513 | Patterns and scripts for integrating Azure Pipelines with languages, tools, services, secrets, notifications, and external systems (Slack, ServiceNow, Key Vault, Service Bus, Git, Selenium). |
| Deployment | L514-L583 | Agent setup and scaling, CI/CD pipelines, and task refs for building, publishing, and deploying apps, containers, and databases to Azure, VMs, Kubernetes, and external feeds. |

### Troubleshooting
| Topic | URL |
|-------|-----|
| Troubleshoot Azure Resource Manager service connections | https://learn.microsoft.com/en-us/azure/devops/pipelines/release/azure-rm-endpoint?view=azure-devops |
| Troubleshoot ARM workload identity service connections | https://learn.microsoft.com/en-us/azure/devops/pipelines/release/troubleshoot-workload-identity?view=azure-devops |
| Review Azure Pipelines logs for diagnostics | https://learn.microsoft.com/en-us/azure/devops/pipelines/troubleshooting/review-logs?view=azure-devops |
| Troubleshoot Azure Web App deployment tasks in pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/troubleshooting/troubleshoot-azure-web-app-deploy?view=azure-devops |
| Fix Azure Pipelines jobs that never start | https://learn.microsoft.com/en-us/azure/devops/pipelines/troubleshooting/troubleshoot-start?view=azure-devops |
| Troubleshoot Azure Pipelines trigger issues | https://learn.microsoft.com/en-us/azure/devops/pipelines/troubleshooting/troubleshoot-triggers?view=azure-devops |
| Troubleshoot Azure Pipelines run failures using logs | https://learn.microsoft.com/en-us/azure/devops/pipelines/troubleshooting/troubleshooting?view=azure-devops |

### Best Practices
| Topic | URL |
|-------|-----|
| Optimize Azure Pipelines performance with caching | https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops |
| Apply cross-platform scripting patterns in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/scripts/cross-platform-scripting?view=azure-devops |
| Manage flaky tests in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/test/flaky-test-management?view=azure-devops |
| Configure parallel test execution for any runner | https://learn.microsoft.com/en-us/azure/devops/pipelines/test/parallel-testing-any-test-runner?view=azure-devops |
| Run VSTest tests in parallel in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/test/parallel-testing-vstest?view=azure-devops |
| Use Test Impact Analysis in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-impact-analysis?view=azure-devops |
| Configure Azure Pipelines for UI test execution | https://learn.microsoft.com/en-us/azure/devops/pipelines/test/ui-testing-considerations?view=azure-devops |

### Decision Making
| Topic | URL |
|-------|-----|
| Migrate from Jenkins to Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-jenkins?view=azure-devops |
| Migrate from Travis CI to Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/migrate/from-travis?view=azure-devops |
| Migrate Classic Azure Pipelines to YAML safely | https://learn.microsoft.com/en-us/azure/devops/pipelines/release/from-classic-pipelines?view=azure-devops |

### Architecture & Design Patterns
| Topic | URL |
|-------|-----|
| Design CI/CD architecture for Azure Web Apps | https://learn.microsoft.com/en-us/azure/devops/pipelines/architectures/devops-pipelines-azure-web-apps-architecture?view=azure-devops |
| Adopt baseline Azure Pipelines CI/CD architecture | https://learn.microsoft.com/en-us/azure/devops/pipelines/architectures/devops-pipelines-baseline-architecture?view=azure-devops |
| Architect DevTest and DevOps pipelines for IaaS | https://learn.microsoft.com/en-us/azure/devops/pipelines/architectures/devops-pipelines-devtest-iaas-architecture?view=azure-devops |
| DevOps architecture for IaaS applications with VMs | https://learn.microsoft.com/en-us/azure/devops/pipelines/architectures/devops-pipelines-iaas-vms-architecture?view=azure-devops |

### Limits & Quotas
| Topic | URL |
|-------|-----|
| Track deprecation schedule for hosted build images | https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted-deprecation-schedule?view=azure-devops |
| Understand Microsoft-hosted agent limits in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops |
| Analyze Azure Pipelines agent pool concurrency | https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/pool-consumption-report?view=azure-devops |
| Publish and download large Universal Packages | https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/universal-packages?view=azure-devops |
| Configure and purchase Azure Pipelines parallel jobs | https://learn.microsoft.com/en-us/azure/devops/pipelines/licensing/concurrent-jobs?view=azure-devops |
| Configure retention policies for builds, releases, and tests | https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops |

### Security
| Topic | URL |
|-------|-----|
| Choose authentication options for self-hosted agents | https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agent-authentication-options?view=azure-devops |
| Run Azure Pipelines agent with self-signed certificate | https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/certificate?view=azure-devops-server |
| Register Azure Pipelines agent using device code flow | https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/device-code-flow-agent-registration?view=azure-devops |
| Register Azure Pipelines agent using PAT authentication | https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/personal-access-token-agent-registration?view=azure-devops |
| Register Azure Pipelines agent with service principal | https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/service-principal-agent-registration?view=azure-devops |
| Securely sign mobile apps in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/apps/mobile/app-signing?view=azure-devops |
| Configure Docker Content Trust signing in Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/ecosystems/containers/content-trust?view=azure-devops |
| Assign administrators for protected pipeline resources | https://learn.microsoft.com/en-us/azure/devops/pipelines/library/add-resource-protection?view=azure-devops |
| Handle special ARM service connection authentication cases | https://learn.microsoft.com/en-us/azure/devops/pipelines/library/azure-resource-manager-alternate-approaches?view=azure-devops |
| Configure Azure Resource Manager service connections | https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops |
| Link Azure Pipelines variable groups to Key Vault | https://learn.microsoft.com/en-us/azure/devops/pipelines/library/link-variable-groups-to-key-vaults?view=azure-devops |
| Manage secure files and access in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops |
| Configure and manage Azure Pipelines service connections | https://learn.microsoft.com/en-us/azure/devops/pipelines/library/service-endpoints?view=azure-devops |
| Manage Azure Pipelines variable groups and access | https://learn.microsoft.com/en-us/azure/devops/pipelines/library/variable-groups?view=azure-devops |
| Manage Azure Pipelines permissions and security groups | https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/permissions?view=azure-devops |
| Manage Azure Pipelines permissions and security groups | https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/permissions?view=azure-devops |
| Manage Azure Pipelines permissions and security groups | https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/permissions?view=azure-devops |
| Manage Azure Pipelines permissions and security groups | https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/permissions?view=azure-devops |
| Manage Azure Pipelines permissions and security groups | https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/permissions?view=azure-devops |
| Manage Azure Pipelines permissions and security groups | https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/permissions?view=azure-devops |
| Manage Azure Pipelines permissions and security groups | https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/permissions?view=azure-devops |
| Manage Azure Pipelines permissions and security groups | https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/permissions?view=azure-devops |
| Manage Azure Pipelines permissions and security groups | https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/permissions?view=azure-devops |
| Add users and manage Azure Pipelines permissions | https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/set-permissions?view=azure-devops |
| Configure Azure Pipelines job access tokens securely | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/access-tokens?view=azure-devops |
| Configure deployment approvals and checks in pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops |
| Configure artifact policy checks for secure deployments | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/artifact-policy?view=azure-devops |
| Protect repository resources in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/repository-resource?view=azure-devops |
| Use secret variables securely in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/set-secret-variables?view=azure-devops |
| Use Azure Key Vault secrets in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/release/azure-key-vault?view=azure-devops |
| Create ARM service connection using client secret | https://learn.microsoft.com/en-us/azure/devops/pipelines/release/configure-app-secret?view=azure-devops |
| Manually configure ARM workload identity connections | https://learn.microsoft.com/en-us/azure/devops/pipelines/release/configure-workload-identity?view=azure-devops |
| Plan an approach for securing YAML pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/security/approach?view=azure-devops |
| Securely handle variables and parameters in pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/security/inputs?view=azure-devops |
| Secure agents, projects, and containers in pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/security/misc?view=azure-devops |
| Configure security settings for Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/security/overview?view=azure-devops |
| Automate Azure Pipelines security with REST and PowerShell | https://learn.microsoft.com/en-us/azure/devops/pipelines/security/project-security-script?view=azure-devops |
| Configure pipeline resource security and approvals | https://learn.microsoft.com/en-us/azure/devops/pipelines/security/resources?view=azure-devops |
| Protect and manage secrets in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/security/secrets?view=azure-devops |
| Secure repository access from Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/security/secure-access-to-repos?view=azure-devops |
| Use YAML templates to improve pipeline security | https://learn.microsoft.com/en-us/azure/devops/pipelines/security/templates?view=azure-devops |
| Check Azure Policy compliance with AzurePolicyCheckGate@0 | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-policy-check-gate-v0?view=azure-pipelines |
| Configure antivirus exclusions for Azure DevOps servers and agents | https://learn.microsoft.com/en-us/azure/devops/pipelines/troubleshooting/anti-virus-exclusion?view=azure-devops |

### Configuration
| Topic | URL |
|-------|-----|
| Choose and configure Azure Pipelines agents | https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops |
| Configure Node.js runners in Azure Pipelines agent | https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/nodejs-runners?view=azure-devops |
| Configure Azure Pipelines agent behind web proxy | https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/proxy?view=azure-devops |
| Publish and download build artifacts in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/build-artifacts?view=azure-devops |
| Publish and download pipeline artifacts in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/pipeline-artifacts?view=azure-devops |
| Use tasks and leases to retain Azure Pipelines runs | https://learn.microsoft.com/en-us/azure/devops/pipelines/build/run-retention?view=azure-devops |
| Reference predefined Azure Pipelines variables | https://learn.microsoft.com/en-us/azure/devops/pipelines/build/variables?view=azure-devops |
| Configure conditions for Azure Pipelines stages, jobs, and steps | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/conditions?view=azure-devops |
| Configure container jobs in Azure Pipelines YAML | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/container-phases?view=azure-devops |
| Author deployment jobs and strategies in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops |
| Configure Kubernetes resources in Azure Pipelines environments | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/environments-kubernetes?view=azure-devops |
| Manage VM resources in Azure Pipelines environments | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/environments-virtual-machines?view=azure-devops |
| Configure Azure DevOps environments for deployments | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/environments?view=azure-devops |
| Use expressions and variables in Azure Pipelines YAML | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/expressions?view=azure-devops |
| Configure pipeline completion triggers in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/pipeline-triggers?view=azure-devops |
| Define and use YAML resources in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/resources?view=azure-devops |
| Configure run and build number formats in pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/run-number?view=azure-devops |
| Configure scheduled triggers for Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/scheduled-triggers?view=azure-devops |
| Configure service containers for Azure Pipelines jobs | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/service-containers?view=azure-devops |
| Define and manage stages in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/stages?view=azure-devops |
| Configure and control task execution in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/tasks?view=azure-devops |
| Configure and use variables in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops |
| Configure Classic pipeline agent jobs and properties | https://learn.microsoft.com/en-us/azure/devops/pipelines/release/options?view=azure-devops |
| Set build completion triggers in classic pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/release/pipeline-triggers-classic?view=azure-devops |
| Configure classic release triggers in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/release/triggers?view=azure-devops |
| Use variables in classic Azure release pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/release/variables?view=azure-devops |
| Monitor pipelines with Azure DevOps dashboard widgets | https://learn.microsoft.com/en-us/azure/devops/pipelines/reports/pipeline-widgets?view=azure-devops |
| Use Azure Pipelines analytics and reports | https://learn.microsoft.com/en-us/azure/devops/pipelines/reports/pipelinereport?view=azure-devops |
| Configure multi-repository checkout in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/multi-repo-checkout?view=azure-devops |
| Configure advanced Git repository options in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/pipeline-options-for-git?view=azure-devops |
| Configure built-in Azure Pipelines task parameters | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/?view=azure-pipelines |
| Configure Advanced Security CodeQL analyze task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/advanced-security-codeql-analyze-v1?view=azure-pipelines |
| Configure Advanced Security CodeQL init task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/advanced-security-codeql-init-v1?view=azure-pipelines |
| Configure Advanced Security dependency scanning task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/advanced-security-dependency-scanning-v1?view=azure-pipelines |
| Configure Advanced Security SARIF publish task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/advanced-security-publish-v1?view=azure-pipelines |
| Configure AndroidBuild@1 task for Gradle builds | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/android-build-v1?view=azure-pipelines |
| Configure AndroidSigning@1 task for APK alignment | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/android-signing-v1?view=azure-pipelines |
| Configure AndroidSigning@2 task parameters in pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/android-signing-v2?view=azure-pipelines |
| Configure AndroidSigning@3 task for APK signing | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/android-signing-v3?view=azure-pipelines |
| Configure Ant@1 build task in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/ant-v1?view=azure-pipelines |
| Configure AppCenterDistribute@0 legacy distribution task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/app-center-distribute-v0?view=azure-pipelines |
| Configure AppCenterDistribute@1 task for testers | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/app-center-distribute-v1?view=azure-pipelines |
| Configure AppCenterDistribute@2 task for distribution | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/app-center-distribute-v2?view=azure-pipelines |
| Configure AppCenterDistribute@3 task for app releases | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/app-center-distribute-v3?view=azure-pipelines |
| Configure AppCenterTest@1 task for mobile app testing | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/app-center-test-v1?view=azure-pipelines |
| Configure ArchiveFiles v1 task inputs and options | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/archive-files-v1?view=azure-pipelines |
| Configure ArchiveFiles v2 task inputs and options | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/archive-files-v2?view=azure-pipelines |
| Configure Azure App Configuration Export task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-app-configuration-export-v10?view=azure-pipelines |
| Configure Azure App Configuration Import task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-app-configuration-import-v10?view=azure-pipelines |
| Configure Azure App Configuration Snapshot task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-app-configuration-snapshot-v1?view=azure-pipelines |
| Configure Azure App Service manage pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-app-service-manage-v0?view=azure-pipelines |
| Configure Azure App Service Settings pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-app-service-settings-v1?view=azure-pipelines |
| Configure Azure CLI preview v0 pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-cli-v0?view=azure-pipelines |
| Configure Azure CLI v1 task for pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-cli-v1?view=azure-pipelines |
| Configure Azure CLI v2 task for pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-cli-v2?view=azure-pipelines |
| Configure Azure Cloud Service deployment v1 task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-cloud-powershell-deployment-v1?view=azure-pipelines |
| Configure Azure Cloud Service deployment v2 task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-cloud-powershell-deployment-v2?view=azure-pipelines |
| Configure Azure Container Apps Deploy v0 task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-container-apps-v0?view=azure-pipelines |
| Configure Azure Container Apps Deploy v1 task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-container-apps-v1?view=azure-pipelines |
| Configure Azure file copy v1 pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-file-copy-v1?view=azure-pipelines |
| Configure Azure file copy v2 pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-file-copy-v2?view=azure-pipelines |
| Configure Azure file copy v3 pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-file-copy-v3?view=azure-pipelines |
| Configure Azure file copy v4 pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-file-copy-v4?view=azure-pipelines |
| Configure Azure file copy v5 pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-file-copy-v5?view=azure-pipelines |
| Configure Azure file copy v6 task with RBAC | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-file-copy-v6?view=azure-pipelines |
| Configure Azure Functions for container deployment task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-function-app-container-v1?view=azure-pipelines |
| Configure Azure Functions v1 pipeline deployment task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-function-app-v1?view=azure-pipelines |
| Configure Azure Functions Deploy v2 pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-function-app-v2?view=azure-pipelines |
| Configure Azure Function on Kubernetes v0 task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-function-on-kubernetes-v0?view=azure-pipelines |
| Configure Azure Function on Kubernetes v1 task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-function-on-kubernetes-v1?view=azure-pipelines |
| Configure AzureFunction@0 legacy function invocation task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-function-v0?view=azure-pipelines |
| Configure AzureFunction@1 to invoke HTTP functions | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-function-v1?view=azure-pipelines |
| Configure Azure IoT Edge v2 build and deploy task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-iot-edge-v2?view=azure-pipelines |
| Configure Azure Key Vault v1 secrets download task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-key-vault-v1?view=azure-pipelines |
| Configure Azure Key Vault v2 secrets download task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-key-vault-v2?view=azure-pipelines |
| Configure Azure Load Testing v1 pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-load-test-v1?view=azure-pipelines |
| Configure deprecated Azure Monitor alerts pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-monitor-alerts-v0?view=azure-pipelines |
| Configure classic AzureMonitor v0 alert query task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-monitor-v0?view=azure-pipelines |
| Configure AzureMonitor task to query alerts in pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-monitor-v1?view=azure-pipelines |
| Configure Azure Database for MySQL deployment task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-mysql-deployment-v1?view=azure-pipelines |
| Configure Azure Network Load Balancer management task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-nlb-management-v1?view=azure-pipelines |
| Configure AzurePowerShell@1 task inputs in pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-powershell-v1?view=azure-pipelines |
| Configure AzurePowerShell@2 task inputs in pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-powershell-v2?view=azure-pipelines |
| Configure AzurePowerShell@3 task inputs in pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-powershell-v3?view=azure-pipelines |
| Configure Azure PowerShell v4 task for pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-powershell-v4?view=azure-pipelines |
| Configure Azure PowerShell v5 task for pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-powershell-v5?view=azure-pipelines |
| Configure AzureResourceGroupDeployment@1 resource group task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-resource-group-deployment-v1?view=azure-pipelines |
| Configure AzureResourceGroupDeployment@2 ARM deployment task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-resource-group-deployment-v2?view=azure-pipelines |
| Configure ARM template deployment v3 pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-resource-manager-template-deployment-v3?view=azure-pipelines |
| Configure Azure App Service Deploy v2 pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-rm-web-app-deployment-v2?view=azure-pipelines |
| Configure Azure App Service deploy v3 pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-rm-web-app-deployment-v3?view=azure-pipelines |
| Configure Azure App Service deploy v4 pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-rm-web-app-deployment-v4?view=azure-pipelines |
| Configure Azure App Service deploy v5 pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-rm-web-app-deployment-v5?view=azure-pipelines |
| Configure AzureStaticWebApp@0 pipeline task inputs | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-static-web-app-v0?view=azure-pipelines |
| Configure AzureTestPlan@0 task for manual and automated tests | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-test-plan-v0?view=azure-pipelines |
| Configure deprecated Azure Web PowerShell deployment task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-web-powershell-deployment-v1?view=azure-pipelines |
| Configure Bash@3 task for scripts on agents | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/bash-v3?view=azure-pipelines |
| Configure BatchScript@1 task for Windows command scripts | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/batch-script-v1?view=azure-pipelines |
| Configure CacheBeta@0 task for pipeline caching | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/cache-beta-v0?view=azure-pipelines |
| Configure CacheBeta@1 task for pipeline caching | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/cache-beta-v1?view=azure-pipelines |
| Configure Cache@2 task to cache pipeline files | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/cache-v2?view=azure-pipelines |
| Configure CargoAuthenticate@0 for Azure Artifacts crates | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/cargo-authenticate-v0?view=azure-pipelines |
| Configure ChefKnife@1 task to run Knife commands | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/chef-knife-v1?view=azure-pipelines |
| Configure Chef@1 task to edit Chef environments | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/chef-v1?view=azure-pipelines |
| Configure CMake@1 task for cross-platform builds | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/cmake-v1?view=azure-pipelines |
| Configure CmdLine@1 task to run commands | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/cmd-line-v1?view=azure-pipelines |
| Configure CmdLine@2 task for cross-platform scripts | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/cmd-line-v2?view=azure-pipelines |
| Configure CocoaPods@0 task to install iOS dependencies | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/cocoa-pods-v0?view=azure-pipelines |
| Configure CondaEnvironment@0 task to create environments | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/conda-environment-v0?view=azure-pipelines |
| Configure CondaEnvironment@1 task to manage environments | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/conda-environment-v1?view=azure-pipelines |
| Configure ContainerBuild@0 task for image builds | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/container-build-v0?view=azure-pipelines |
| Configure ContainerStructureTest@0 to validate images | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/container-structure-test-v0?view=azure-pipelines |
| Configure CopyFilesOverSSH@0 to transfer files remotely | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/copy-files-over-ssh-v0?view=azure-pipelines |
| Configure CopyFiles@1 task to copy files | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/copy-files-v1?view=azure-pipelines |
| Configure CopyFiles@2 task to copy files with patterns | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/copy-files-v2?view=azure-pipelines |
| Configure CopyPublishBuildArtifacts@1 to stage and publish artifacts | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/copy-publish-build-artifacts-v1?view=azure-pipelines |
| Configure cURLUploader@1 to upload files via cURL | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/curl-uploader-v1?view=azure-pipelines |
| Configure cURLUploader@2 to upload files via cURL | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/curl-uploader-v2?view=azure-pipelines |
| Configure DecryptFile@1 task to decrypt with OpenSSL | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/decrypt-file-v1?view=azure-pipelines |
| Configure Delay@1 task to pause pipeline execution | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/delay-v1?view=azure-pipelines |
| Configure DeleteFiles@1 task to remove files and folders | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/delete-files-v1?view=azure-pipelines |
| Configure deprecated DockerCompose@0 pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/docker-compose-v0?view=azure-pipelines |
| Configure DockerCompose@1 task for multi-container apps | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/docker-compose-v1?view=azure-pipelines |
| Configure DockerInstaller@0 task to install Docker CLI | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/docker-installer-v0?view=azure-pipelines |
| Configure Docker@0 legacy Docker pipeline task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/docker-v0?view=azure-pipelines |
| Configure Docker@1 task for Azure DevOps pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/docker-v1?view=azure-pipelines |
| Configure Docker@2 task for image build and push | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/docker-v2?view=azure-pipelines |
| Configure DotNetCoreCLI@0 task settings in pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/dotnet-core-cli-v0?view=azure-pipelines |
| Configure DotNetCoreCLI@1 task parameters in pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/dotnet-core-cli-v1?view=azure-pipelines |
| Configure DotNetCoreCLI@2 task inputs in Azure Pipelines | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/dotnet-core-cli-v2?view=azure-pipelines |
| Configure DotNetCoreInstaller@0 SDK/runtime installer task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/dotnet-core-installer-v0?view=azure-pipelines |
| Configure DotNetCoreInstaller@1 SDK acquisition task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/dotnet-core-installer-v1?view=azure-pipelines |
| Configure DownloadBuildArtifacts@0 legacy task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/download-build-artifacts-v0?view=azure-pipelines |
| Configure DownloadBuildArtifacts@1 task for builds | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/download-build-artifacts-v1?view=azure-pipelines |
| Configure DownloadFileshareArtifacts@1 task for file shares | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/download-fileshare-artifacts-v1?view=azure-pipelines |
| Configure DownloadGithubNpmPackage@1 for GitHub npm feeds | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/download-github-npm-package-v1?view=azure-pipelines |
| Configure DownloadGitHubNugetPackage@1 for NuGet restore | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/download-github-nuget-package-v1?view=azure-pipelines |
| Configure DownloadGitHubRelease@0 task for releases | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/download-github-release-v0?view=azure-pipelines |
| Configure DownloadPackage@0 deprecated package task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/download-package-v0?view=azure-pipelines |
| Configure DownloadPackage@1 task for Azure Artifacts | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/download-package-v1?view=azure-pipelines |
| Configure DownloadPipelineArtifact@0 deprecated task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/download-pipeline-artifact-v0?view=azure-pipelines |
| Configure DownloadPipelineArtifact@1 legacy artifact task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/download-pipeline-artifact-v1?view=azure-pipelines |
| Configure DownloadPipelineArtifact@2 for pipeline artifacts | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/download-pipeline-artifact-v2?view=azure-pipelines |
| Configure DownloadSecureFile@1 task for secure files | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/download-secure-file-v1?view=azure-pipelines |
| Configure DuffleInstaller@0 task for CNAB bundles | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/duffle-installer-v0?view=azure-pipelines |
| Configure ExtractFiles@1 task for archive extraction | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/extract-files-v1?view=azure-pipelines |
| Configure FileTransform@1 deprecated transform task | https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/file-transform-v1?view=azure-pipelines |
| C

…(truncated)