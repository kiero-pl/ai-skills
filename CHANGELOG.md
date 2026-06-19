# Changelog

Changes are grouped by date because this repository does not use versioned releases.

## 2026-06-19

- Added the `quick-repository-insights` skill for quick Git-history repository diagnostics.
- Added a bundled script that reports churn hotspots, contributor ownership, bug-related file hotspots, monthly commit volume, and firefighting patterns as Markdown tables.
- Documented the skill's inspiration, installation, usage, and MIT license.
- Added `quick-repository-insights` to the root README skill table.

## 2026-06-18

- Refined the `write-merge-request` skill around evidence-led PR/MR writing.
- Added deterministic Git inspection guidance for fetching remote refs, choosing a base branch, inspecting diffs, and reviewing commits.
- Split the workflow into draft-writing and existing-draft review paths.
- Simplified the fallback PR/MR description template and tightened accuracy rules.
- Updated Codex metadata for `write-merge-request` to describe both writing and reviewing evidence-led PR/MR text.

## 2026-06-15

- Removed the default testing section from the `write-merge-request` fallback template.
- Changed testing guidance so testing information is included only when the repository template requires it.
- Removed testing from the skill description and existing-draft review checklist.

## 2026-06-11

- Initialized the repository with MIT licensing, editor settings, and the first `write-merge-request` skill.
- Added OpenAI/Codex metadata for the `write-merge-request` skill.
- Added root README documentation for skill usage, repository layout, validation, and installation.
- Added `.gitignore` entries for common local, editor, Node.js, Python, environment, and agent metadata files.
- Converted the root README skill listing into a scalable table and added per-skill README documentation for `write-merge-request`.
