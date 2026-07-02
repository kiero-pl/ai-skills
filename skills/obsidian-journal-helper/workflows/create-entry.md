# Create Entry Workflow

Use this workflow when the user wants to create a new daily, weekly, monthly, or yearly Obsidian journal note. For projects, use `workflows/create-project.md` instead.

## Inputs

Determine:

- the note type: daily, weekly, monthly, or yearly;
- the target date or period;
- the destination path, if the user overrides the default vault path;
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

5. Resolve the target path.
   Completion criterion: the file path is determined using `guides/vault-conventions.md` and the detected folder structure of the user's vault.

6. Write the note to the resolved path.
   Completion criterion: the file is created at the correct vault location.

7. Confirm the save.
   Completion criterion: the user is told the path where the note was saved.

## Output

Write the note to the vault by default. Only return a Markdown code block when the user explicitly asks not to write a file.

When writing to a file, report the path created and avoid adding a second copy of the full note unless the user asks.
