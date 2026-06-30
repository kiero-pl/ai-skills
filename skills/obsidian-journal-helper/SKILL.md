---
name: obsidian-journal-helper
description: Use when working with an Obsidian journal: creating daily, weekly, monthly, yearly, reflection, or project notes; reviewing journal entries; correcting spelling and grammar; editing journal prose while preserving the author's voice.
license: MIT
---

# Obsidian Journal Helper

Help with an Obsidian-based personal journal while preserving privacy, source accuracy, and the author's voice. Correct spelling and grammar when editing prose, without changing meaning or flattening personal tone.

## Routing

- For creating a new note, load `workflows/create-entry.md`, `guides/vault-conventions.md`, and the matching file from `templates/`.
- For editing an existing journal entry or correcting spelling and grammar, load `workflows/edit-entry.md` and `guides/journal-principles.md`.
- For a daily review, load `workflows/daily-review.md` and `guides/journal-principles.md`.
- For a weekly review, load `workflows/weekly-review.md` and `guides/journal-principles.md`.
- For a monthly review, load `workflows/monthly-review.md` and `guides/journal-principles.md`.
- For a yearly review, load `workflows/yearly-review.md` and `guides/journal-principles.md`.

## Default Rules

- Determine the journal language before editing, reviewing, or creating entries. If the language cannot be inferred from the source notes or user request, ask one short clarification question.
- If the user's project defines matching Obsidian templates, use the user's templates. Otherwise use the bundled templates from `templates/`.
- Do not edit journal files unless the user explicitly asks to write changes to a specific file.
- Separate source facts from interpretations.
- Do not diagnose, moralize, or overwrite the user's personal tone.
- Correct spelling, grammar, punctuation, and obvious typos during prose edits unless the user asks to preserve the original text exactly.
- Ask for missing dates, note type, or file paths only when they cannot be inferred from the user's request or the vault structure.

## Output

Return the result in Markdown. When writing into an Obsidian note, preserve wiki links, frontmatter, tags, and task checkbox syntax.
