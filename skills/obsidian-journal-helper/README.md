# Obsidian Journal Helper

Creates, edits, corrects, and reviews an Obsidian-based personal journal using structured workflows and templates.

The skill:

- creates daily, weekly, monthly, yearly, reflection, and project notes;
- corrects spelling, grammar, punctuation, and obvious typos;
- reviews journal entries without inventing unsupported facts;
- separates facts from interpretations;
- preserves the author's voice when editing personal entries;
- loads only the workflow and template needed for the current request.

## Installation

Install the skill with `npx skills add`:

```bash
npx skills add https://github.com/kiero-pl/ai-skills --skill obsidian-journal-helper
```

You can also use the shorter `@` syntax:

```bash
npx skills add kiero-pl/ai-skills@obsidian-journal-helper
```

Restart the agent if it does not automatically discover the newly installed skill.

## Usage

Use it for journal work in Obsidian:

```text
Create a daily journal note for today.
```

```text
Review this week's daily notes and draft a weekly review.
```

```text
Edit this entry lightly without changing my voice.
```

```text
Correct spelling and grammar in this journal entry without changing my tone.
```

## Design

`SKILL.md` acts as a router. It points the agent to a focused workflow and only the template required for the current task.

## License

MIT
