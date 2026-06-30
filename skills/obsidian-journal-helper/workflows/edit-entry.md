# Edit Entry Workflow

Use this workflow when the user wants to revise, polish, shorten, clarify, or correct spelling and grammar in an existing journal entry.

Before editing, apply `guides/journal-principles.md`.

## Editing Modes

- Spelling and grammar correction: fix spelling, grammar, punctuation, and obvious typos without changing meaning or voice.
- Light edit: fix clarity, grammar, repetition, and flow while preserving structure.
- Structural edit: reorganize sections without changing meaning.
- Reflective edit: make the entry more coherent while preserving uncertainty and emotional nuance.
- Summary edit: produce a shorter version separate from the original text.

If the mode is unclear, default to spelling and grammar correction plus a light edit.

## Steps

1. Identify the source entry.
   Completion criterion: the exact text or file path being edited is known.

2. Identify the requested editing mode.
   Completion criterion: the scope of allowed change is clear.

3. Preserve the author's voice.
   Completion criterion: phrasing remains personal and does not become generic productivity prose.

4. Preserve facts and uncertainty.
   Completion criterion: no new events, motives, diagnoses, or conclusions are introduced.

5. Correct spelling and grammar when editing prose.
   Completion criterion: obvious language errors are fixed without flattening style, emotion, or intent.

6. Produce the edited result.
   Completion criterion: the output is ready to paste back into Obsidian or written only to the explicit file requested by the user.

## Output

For normal edits, return:

```markdown
## Edited Version

<edited text>

## Notes

- <short note about what changed, only if useful>
```

Omit `Notes` when the edit is straightforward and the user asked only for the revised text.
