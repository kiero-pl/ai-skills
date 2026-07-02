# Monthly Review Workflow

Use this workflow to review a month from daily notes, weekly notes, and an optional existing monthly note.

Before reviewing, apply `guides/journal-principles.md`.

## Inputs

Read:

- available weekly notes from the requested month;
- available daily notes when weekly notes are missing or insufficient;
- the monthly note, if it already exists;
- the yearly note only when needed for broader context.

## Section Cleanup Rules

- If a section is empty, ask whether it should be removed.
- If a section contains user content, remove the instructional comment directly under that section heading.
- Do not remove a section only because it has no content unless the user confirms.

## Steps

1. Identify the month.
   Completion criterion: the `YYYY-MM` identifier and month boundaries are known.

2. Find available sources.
   Completion criterion: weekly notes, daily notes, existing monthly note, and optional yearly context are accounted for.

3. Read the most relevant sources.
   Completion criterion: the review is based on available notes without treating missing periods as evidence.

4. Extract monthly facts.
   Completion criterion: major events, wins, difficulties, lessons, and metrics trace to source notes.

5. Identify patterns and direction.
   Completion criterion: interpretations are clearly separated from source facts.

6. Prepare the review.
   Completion criterion: the output contains every heading from the response format.

7. Check the result against `guides/journal-principles.md`.
   Completion criterion: the review is accurate, nonjudgmental, and explicit about source limitations.

8. Ask the user whether to set `reviewed: true` on the processed entry frontmatter.
   Completion criterion: the user confirmed or declined, and the frontmatter is updated accordingly when confirmed.

## Response Format

```markdown
## Month Theme

## Key Events

## What Went Well

## What Did Not Work

## Biggest Lessons

## Life Areas

### Health

### Work

### Learning

### Relationships

### Finances

### Projects

## Metrics

## Next Month

### Direction

### Priorities

## Reflection Question
```
