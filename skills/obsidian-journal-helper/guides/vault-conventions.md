# Vault Conventions

Use these conventions when creating or updating Obsidian journal notes.

## Template Selection

- Check whether the user's project or vault defines a matching Obsidian template for the requested note type.
- Use the user's template when one exists.
- Use the bundled template from `templates/` only when no matching user template is available.
- Preserve the user's template structure unless the user asks to reshape it.

## Date Identifiers

- Daily note: `YYYY-MM-DD`.
- Weekly note: `YYYY-Www`, for example `2026-W27`.
- Monthly note: `YYYY-MM`.
- Yearly note: `YYYY`.

## Frontmatter

- Keep frontmatter valid YAML.
- Use `type` to identify the note kind: `daily`, `weekly`, `monthly`, `yearly`, or `project`.
- Use date fields that match the note kind.
- Use `reviewed: true/false` to mark whether the entry has been reviewed and revised by AI. Defaults to `false`.
- Preserve existing frontmatter keys unless the user asks to change them.

## Links

- Use Obsidian wiki links for period relationships, such as `[[2026-W27]]`, `[[2026-07]]`, and `[[2026]]`.
- Daily notes should link to their week, month, and year.
- Weekly notes should link to their month and year.
- Monthly notes should link to their year.

## Tasks And Lists

- Preserve Obsidian task syntax: `- [ ]` and `- [x]`.
- Keep lists concise and actionable when the section is meant for planning.
- Do not convert personal journal prose into tasks unless the user asks.
