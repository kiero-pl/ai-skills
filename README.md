# AI Skills

Reusable skills for AI coding agents.

## Available skills

### `write-merge-request`

Creates or improves merge request and pull request titles and descriptions using the actual code
changes, commit history, repository conventions, and issue context.

The skill:

- writes concise, outcome-focused titles;
- follows existing MR or PR templates;
- separates behavioral changes from refactoring;
- reports only tests that were actually executed;
- avoids invented issue IDs, risks, and implementation claims;
- supports both GitLab merge requests and GitHub pull requests.

## Installation

Clone this repository and copy or symlink the skill into the agent's skills directory:

```bash
git clone https://github.com/<owner>/ai-skills.git
cp -R ai-skills/skills/write-merge-request ~/.codex/skills/
```

Alternatively, clone the repository directly into an existing workspace and point your agent at:

```text
skills/write-merge-request/SKILL.md
```

Restart the agent if it does not automatically discover newly installed skills.

## Usage

Invoke the skill explicitly:

```text
Use $write-merge-request to analyze my current changes and draft a merge request.
```

It can also be used to improve an existing draft:

```text
Use $write-merge-request to review this MR title and description against the current diff.
```

## Repository layout

```text
skills/
└── write-merge-request/
    ├── SKILL.md
    └── agents/
        └── openai.yaml
```

## Validation

Validate the skill with Codex's `skill-creator` validator:

```bash
python3 ~/.codex/skills/.system/skill-creator/scripts/quick_validate.py \
  skills/write-merge-request
```

## License

MIT
