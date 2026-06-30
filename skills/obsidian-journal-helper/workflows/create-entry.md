# Create Entry Workflow

Use this workflow when the user wants to create a new Obsidian journal note.

## Inputs

Determine:

- the note type: daily, weekly, monthly, yearly, reflection, or project;
- the target date or period;
- the destination path, if the user expects the file to be written;
- any source notes that should inform the draft.

Ask only for information that cannot be inferred and would change the result.

## Steps

1. Identify the note type and period.
   Completion criterion: the note type and required date identifiers are known.

2. Select the template.
   Completion criterion: a matching user-defined template has been found and used, or no matching user template exists and the bundled template from `templates/` is selected.

3. Apply `guides/vault-conventions.md`.
   Completion criterion: frontmatter, date fields, tags, links, and task syntax follow the vault conventions.

4. Fill only safe, supported content.
   Completion criterion: generated content is based on the user's request or supplied sources, and empty prompts remain available for the author.

5. Return or write the note.
   Completion criterion: the note is returned in Markdown, or written only to the explicit path requested by the user.

## Output

Return the complete note in a Markdown code block unless the user asked to write it to a file.

When writing to a file, report the path changed and avoid adding a second copy of the full note unless the user asks.
