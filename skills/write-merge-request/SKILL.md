---
name: write-merge-request
description: Generate, rewrite, and review concise merge request or pull request titles and descriptions from code changes, commits, issue context, or an existing draft. Use when creating or improving GitLab merge requests, GitHub pull requests, MR or PR titles, descriptions, summaries, testing notes, reviewer context, or release-facing change explanations.
---

# Write Merge Request

## Workflow

1. Inspect the repository's contribution guide and merge or pull request template.
2. Inspect the actual diff compare to master/main/develop, changed files, relevant commits, and supplied issue context.
3. Identify the primary user-visible or architectural outcome and why it was needed.
4. Separate the main change from refactoring, generated files, and incidental edits.
5. Draft a concise title.
6. Draft the description using the repository template or the fallback structure below.
7. Verify that every statement is supported by the available evidence.
8. Return the title and description in copy-ready form.

Ask for missing context only when it cannot be obtained from the repository and would materially change the result. Otherwise, state the uncertainty explicitly instead of inventing details.

## Write The Title

- Describe the primary outcome rather than the implementation process.
- Use imperative mood unless the repository consistently uses another convention.
- Keep the title under 72 characters when practical.
- Follow established repository conventions, including Conventional Commits, scopes, or issue IDs.
- Include an issue identifier only when it is present in the supplied context, branch name or required by the repository.
- Avoid vague titles such as `Fix issue`, `Update code`, `Changes`, or `Various improvements`.
- Do not list multiple minor implementation details in the title.

Examples:

- `Prevent duplicate invoice creation`
- `[OP-12] Add filtering to the audit log`
- `refactor(auth): centralize token validation`
- `test(user): RSTR-321 centralize token validation`

## Write The Description

Prefer the repository's existing template. Preserve its required headings, checklists, and issue syntax. When no template exists, use:

```markdown
## Summary

Explain what changed and why in two or three sentences.

## Changes

- List the main behavioral or architectural changes.
- Omit low-value file-by-file details.

## Testing

- List tests and checks that were actually executed.
- Write `Not run` with a reason when no verification was performed.

## Related issues

Include only issue references present in the available context.

## Disclaimer

Include any necessary legal, security, or compliance disclaimers required by the repository or relevant to the change. For example "This change include mock interceptor for testing purposes before backend implementation is ready. It should not be used in production.".
```

Omit an empty `Related issues` section unless the repository template requires it.

## Maintain Accuracy

- Base claims on the diff, commits, tests, and issue context.
- Do not claim that tests pass unless there is evidence they were executed successfully.
- Do not invent issue identifiers, deployment impact, compatibility guarantees, or performance results.
- Distinguish functional changes from refactoring with no intended behavior change.
- Mention migrations, configuration changes, feature flags, breaking changes, and rollout steps when present.
- Highlight meaningful reviewer risks and non-obvious tradeoffs without exaggerating them.
- Use technical terminology already established by the codebase.

## Review An Existing Draft

1. Check whether the title identifies the primary outcome.
2. Check whether the description explains both what changed and why.
3. Remove unsupported claims, repetition, and low-value implementation detail.
4. Add missing testing, migration, compatibility, rollout, or risk information when supported.
5. Preserve correct project terminology and the intended scope.
6. Return the improved title and complete description.

## Output

Return:

```markdown
Title: <title>

Description:

<description>
```

Add a short `Missing context` note after the description only when unresolved information prevents
a reliable statement.
