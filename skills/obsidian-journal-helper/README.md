# Obsidian Journal Helper

Creates, edits, corrects, and reviews an Obsidian-based personal journal using structured workflows and templates.

The skill:

- captures quick ideas and thoughts to the inbox;
- creates daily, weekly, monthly, yearly, and flexible project notes;
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

```text
Save this idea to my inbox: start learning woodworking.
```

## Design

`SKILL.md` acts as a router. It points the agent to a focused workflow and only the template required for the current task.

## Evals

The skill includes lightweight eval scenarios in `evals/evals.json`. They cover entry creation, inbox capture, daily and weekly review behavior, project creation, and tone-preserving edits.

These evals are intended as human-readable quality checks and can be used as a starting point for automated skill evaluation.

## License

MIT
