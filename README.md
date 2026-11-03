# DevOps.AI
A collections of roles and skills required for a devops team. The reason for this project is to demonstrate the delagation of the work, normally done by real life roles, to separate agents. It also specializes the context for each agent so it **COULD** generate better results. The basis for this hypothesis is a clear specification helps the context of an AI model. 

The data in this project is based on a team working on a .Net project and is solely used to demonstrate how all these components can be set up to work together. If you want to use the project you should tweak it to your own usecase.

![AI generated team]([https://www.markdownlang.com/static/images/logo.png](https://github.com/Luuk-4DotNet/DevOps.AI/blob/main/DevOps.jpeg))


## Agents

The roles whitin the team, e.g. developer and tester. There should be always an agent who delegates the work to the team members or sub-agents. In this case it's the Team Lead. Every agent has a name, description, model, personality, skills, tools and workflow. The models are given for Anthropic, Github and Google. Personalities are an optional thing to make it a bit more fun.


## Skills

The agent skills specified for the roles. Every agent should possess one or multiple skills.


## Tools

The tools defined to be used by each role. This can be an MCP server or a local tool.


## Personalities

Optional, but can be used to make thinks more interesting.

The personalities for the agents, e.g. joker or direct. By default the agents act as normal AI models.


## Scenes

Optional, but can be used to make thinks more interesting.

The setting in which the team operates, e.g. Lord of the rings or Star Wars. By default the agents act as normal AI models.


### Disclaimer

Running multiple sub-agents leads to higher token usage!


### Ideas

- A team generator cli for generating custom teams (CLAI)
- A visual representation of the team working and spending tokens (The sAIms)
