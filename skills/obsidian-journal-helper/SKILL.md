---
name: obsidian-journal-helper
description: Use when working with an Obsidian journal vault: capture inbox ideas, create daily/weekly/monthly/yearly notes, create or organize project notes, review journal entries, correct spelling and grammar, or edit personal prose while preserving the author's voice.
license: MIT
---

# Obsidian Journal Helper

Help with an Obsidian-based personal journal while preserving privacy, source accuracy, and the author's voice. Correct spelling and grammar when editing prose, without changing meaning or flattening personal tone.

## Routing

- For capturing a quick idea to the inbox, load `workflows/inbox-capture.md` and `templates/inbox.md`.
- For creating a daily, weekly, monthly, or yearly note, load `workflows/create-entry.md`, `guides/vault-conventions.md`, and the matching template: `templates/daily.md`, `templates/weekly.md`, `templates/monthly.md`, or `templates/yearly.md`.
- For creating or organizing a project, load `workflows/create-project.md`, `guides/vault-conventions.md`, and `templates/project.md`.
- For editing an existing journal entry or correcting spelling and grammar, load `workflows/edit-entry.md` and `guides/journal-principles.md`.
- For a daily review, load `workflows/daily-review.md` and `guides/journal-principles.md`.
- For a weekly review, load `workflows/weekly-review.md` and `guides/journal-principles.md`.
- For a monthly review, load `workflows/monthly-review.md` and `guides/journal-principles.md`.
- For a yearly review, load `workflows/yearly-review.md` and `guides/journal-principles.md`.

## Default Rules

- Determine the journal language before editing, reviewing, or creating entries. If the language cannot be inferred from the source notes or user request, ask one short clarification question.
- If the user's vault defines matching Obsidian templates, use the user's templates. Otherwise use the bundled templates from `templates/`.
- Detect the actual folder names from the user's vault rather than assuming the default English names.
- The inbox is for loose thoughts and ideas. Do not automatically convert inbox items into tasks or action items.
- Creating a new note is allowed when the user's request is to create or save one. Do not modify existing journal files unless the user explicitly asks to write changes to a specific file.
- Separate source facts from interpretations.
- Do not diagnose, moralize, or overwrite the user's personal tone.
- Correct spelling, grammar, punctuation, and obvious typos during prose edits unless the user asks to preserve the original text exactly.
- Ask for missing dates, note type, or file paths only when they cannot be inferred from the user's request or the vault structure.

## Gotchas

- User-defined vault templates take priority over bundled templates.
- Detect actual vault folder names at runtime; the default English names are semantic references, not guaranteed physical paths.
- Inbox notes are capture material, not tasks by default.
- Never modify an existing note unless the user confirms the write.
- Set `reviewed: true` only after the user confirms it.

## Output

Return the result in Markdown. When writing into an Obsidian note, preserve wiki links, frontmatter, tags, and task checkbox syntax.
