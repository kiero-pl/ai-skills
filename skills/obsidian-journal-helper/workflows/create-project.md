# Create Project Workflow

Use this workflow when the user wants to create, organize, or turn a loose idea into a project note.

## Inputs

Determine:

- the project name;
- the project type, if it can be inferred;
- the target path, if the user explicitly requests one;
- any source notes, inbox items, or project context that should inform the draft.

Ask only for missing information that would materially change the project note. If `project_type` cannot be inferred, ask one short question or leave it blank when the user wants a quick draft.

## Project Types

Use `project_type` to classify the project for filtering and search. Prefer one value.

Common values:

- `software`
- `woodworking`
- `home`
- `garden`
- `paperwork`
- `finance`
- `learning`
- `writing`
- `maintenance`
- `other`

## Steps

1. Identify the project scope.
   Completion criterion: the project name, likely project type, and available context are known.

2. Select the template.
   Completion criterion: a matching user-defined project template has been found and used, or no matching user template exists and `assets/project.md` is selected.

3. Draft a flexible project note.
   Completion criterion: the note captures the useful sections for this project without forcing irrelevant sections.

4. Keep `Steps` as checkbox progress.
   Completion criterion: planned and completed steps use `- [ ]` or `- [x]` so progress is visually scannable.

5. Resolve the target path.
   Completion criterion: the file path resolves under the projects folder, flat by default: `03_Projects/<Project>.md`, unless the user requested another path or a large project needs a subfolder.

6. Write the note.
   Completion criterion: the project note is created at the resolved path.

7. Confirm the save.
   Completion criterion: the user is told the path where the project note was saved.

## Optional Sections

The bundled project template is intentionally broad. Sections are optional helpers, not required fields.

- Remove sections that do not make sense when the user asks for a simplified note.
- Ask before removing sections from an existing project note.
- Keep `Steps` for quick progress scanning.
- Use `Timeline` for dates, phases, dependencies, and detailed scheduling.
- Use `Budget / Cost Estimate` for money, materials, tools, labor, or other concrete resources when relevant.
- Use `Preview / Visualizations` for sketches, photos, mockups, diagrams, inspiration links, or other visual references.

## Output

Write the project note to the vault by default. Only return a Markdown code block when the user explicitly asks not to write a file.
