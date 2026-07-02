# Daily Review Workflow

Use this workflow to review one daily journal entry.

Before reviewing, apply `guides/journal-principles.md`.

## Inputs

Read:

- the requested daily note;
- the linked weekly note only when needed for context;
- the linked monthly note only when needed for broader context.

## Section Cleanup Rules

- If a section is empty, ask whether it should be removed.
- If a section contains user content, remove the instructional comment directly under that section heading.
- Do not remove a section only because it has no content unless the user confirms.
- If all frontmatter fields have values, remove the helper comment block listing the allowed values (the `%% ... %%` block after the frontmatter).

## Daily-Specific Rules

- If the `Journal` section mentions something for tomorrow in the journal's established language, move that information to the `Tomorrow` section.
- Do not convert tomorrow notes into `Tasks` unless the source explicitly frames them as tasks.
- Do not overwrite existing `Tomorrow` content; append or merge the moved information.

## Steps

1. Identify the daily source.
   Completion criterion: the exact daily note path or supplied text is known.

2. Read the daily entry.
   Completion criterion: every section is considered or marked as empty.

3. Extract source facts.
   Completion criterion: every factual claim in the review traces to the entry.

4. Name interpretations separately.
   Completion criterion: patterns, hypotheses, and possible meanings are labeled as interpretations.

5. Prepare the review.
   Completion criterion: the output contains every heading from the response format.

6. Check the result against `guides/journal-principles.md`.
   Completion criterion: the review is nonjudgmental and does not invent facts or diagnoses.

7. Ask the user whether to set `reviewed: true` on the processed entry frontmatter.
   Completion criterion: the user confirmed or declined, and the frontmatter is updated accordingly when confirmed.

## Response Format

```markdown
## Day Summary

## Key Events

## Emotions And Energy

### Energy Givers

### Energy Drainers

## Decisions

## Lessons

## Tomorrow

## Reflection Question
```
