# AI Skills

Reusable skills for AI coding agents.

## Available skills

<table>
  <tr>
    <td><a href="./skills/write-merge-request"><code>write-merge-request</code></a></td>
    <td>Creates accurate merge request and pull request titles and descriptions from repository changes.</td>
  </tr>
  <tr>
    <td><a href="./skills/quick-repository-insights"><code>quick-repository-insights</code></a></td>
    <td>Generates quick Git-history insights about churn, ownership, bug hotspots, project momentum, and firefighting patterns.</td>
  </tr>
</table>

## Installation

Install a skill from this repository by replacing `<skill-name>` with its name:

```bash
npx skills add https://github.com/kiero-pl/ai-skills --skill <skill-name>
```

You can also use the shorter `@` syntax:

```bash
npx skills add kiero-pl/ai-skills@<skill-name>
```

Alternatively, clone this repository and copy or symlink the skill into the agent's skills
directory:

```bash
git clone https://github.com/kiero-pl/ai-skills.git
cp -R ai-skills/skills/<skill-name> ~/.codex/skills/
```

Alternatively, clone the repository directly into an existing workspace and point your agent at:

```text
skills/<skill-name>/SKILL.md
```

Restart the agent if it does not automatically discover newly installed skills.

## Repository layout

```text
skills/
└── <skill-name>/
    ├── README.md
    ├── SKILL.md
    └── agents/
        └── openai.yaml
```

## Validation

Validate the skill with Codex's `skill-creator` validator:

```bash
python3 ~/.codex/skills/.system/skill-creator/scripts/quick_validate.py \
  skills/<skill-name>
```

## License

MIT
