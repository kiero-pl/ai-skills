# Vault Conventions

Use these conventions when creating or updating Obsidian journal notes.

## Vault Structure

The default vault structure uses English folder names. Detect the actual folder names from the user's vault at runtime — they may be in a different language.

```
00_Inbox/              Loose thoughts, quick ideas, things to process later
01_Journal/
  01_Days/YYYY/MM/     Daily notes
  02_Weeks/            Weekly notes
  03_Months/           Monthly notes
  04_Years/            Yearly notes
02_Areas/              Life areas (Health, Work, Finance, etc.)
03_Projects/           Projects — flat by default; subfolders allowed for large projects
04_Notes/              General notes
80_Tables/             Statistical tables (.base files)
90_Templates/          Obsidian templates
99_Archive/            Archived items
```

- Inbox notes: `00_Inbox/<YYYY-MM-DD>-<kebab-title>.md`
- Daily notes: `01_Journal/01_Days/YYYY/MM/YYYY-MM-DD.md`
- Weekly notes: `01_Journal/02_Weeks/YYYY-Www.md`
- Monthly notes: `01_Journal/03_Months/YYYY-MM.md`
- Yearly notes: `01_Journal/04_Years/YYYY.md`
- Area notes: `02_Areas/<Area>.md`
- Project notes: `03_Projects/<Project>.md`, flat by default
- General notes: `04_Notes/<note>.md`
- Tables: `80_Tables/<table>.base`
- Templates: `90_Templates/<type>.md`

Ignore any folder mapping to `Reflections` — not used by this skill.

## Template Selection

- Check whether the user's vault defines a matching template under their templates folder (e.g. `90_Templates/`).
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
- Use `type` to identify the note kind: `daily`, `weekly`, `monthly`, `yearly`, `project`, or `inbox`.
- Use date fields that match the note kind.
- Use `project_type` on project notes to classify the project, for example `software`, `woodworking`, `home`, `garden`, `paperwork`, `finance`, `learning`, `writing`, `maintenance`, or `other`.
- Use `reviewed: true/false` to mark whether the entry has been reviewed and revised by AI. Defaults to `false`.
- Preserve existing frontmatter keys unless the user asks to change them.

## Projects

- Keep `03_Projects/` as flat as practical.
- Use a subfolder only when one large project needs multiple supporting notes, assets, or sub-projects.
- Treat project template sections as optional helpers, not required fields.
- Keep `Steps` as checkboxes so completed and remaining work is visually scannable.
- Use `Timeline` for phases, dates, dependencies, and scheduling detail.
- Use `Budget / Cost Estimate` for money, materials, tools, labor, or other concrete resources when relevant.

## Links

- Use Obsidian wiki links for period relationships, such as `[[2026-W27]]`, `[[2026-07]]`, and `[[2026]]`.
- Daily notes should link to their week, month, and year.
- Weekly notes should link to their month and year.
- Monthly notes should link to their year.

## Tasks And Lists

- Preserve Obsidian task syntax: `- [ ]` and `- [x]`.
- Keep lists concise and actionable when the section is meant for planning.
- Do not convert personal journal prose into tasks unless the user asks.
