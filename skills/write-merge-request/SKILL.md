---
name: write-merge-request
description: Use for writing or reviewing merge request and pull request titles and descriptions from diffs, commits, issue context, or drafts. Use for PR/MR titles, descriptions, summaries, reviewer context, and release-facing change explanations.
license: MIT
---

# Write Merge Request

Write evidence-led PR/MR text: every claim must trace to the diff, commits, issue context, repository template, or supplied draft.

## Workflow

1. Run `git fetch --all --prune` so remote branch and diff data are current.
2. Identify the origin base branch the current branch was cut from. If that branch no longer exists, use the first available fallback in this order: `origin/develop`, `origin/main`, `origin/master`.
3. Inspect the diff, changed files, relevant commits, contribution guide, PR/MR template, and supplied issue context until the main outcome, supporting changes, and uncertainty are accounted for.
4. Identify the primary user-visible or architectural outcome and why it was needed until the title can describe one dominant result.
5. Separate the main change from refactoring, generated files, and incidental edits until each major modified area is accounted for.
6. If reviewing a supplied draft, use Review Existing Draft. Otherwise, use Write Draft.
7. Return the title and complete description in copy-ready form.

Ask for missing context only when it cannot be obtained from the repository and would materially change the result.

## Git Inspection Commands

Run:

```bash
git fetch --all --prune
git branch --show-current
git remote show origin
git for-each-ref --format='%(refname:short)' refs/remotes/origin
```

Use the origin branch the current branch was cut from when it is known from user context, PR metadata, or branch metadata and still exists. If it is unknown or gone, choose the first branch that exists:

```bash
origin/develop
origin/main
origin/master
```

Use this script to select the base ref deterministically. Set `BASE_BRANCH` first only when the original base branch is known, without the `origin/` prefix:

```bash
git fetch --all --prune

base_ref=""
if [ -n "${BASE_BRANCH:-}" ] && git show-ref --verify --quiet "refs/remotes/origin/${BASE_BRANCH}"; then
  base_ref="origin/${BASE_BRANCH}"
else
  for candidate in develop main master; do
    if git show-ref --verify --quiet "refs/remotes/origin/${candidate}"; then
      base_ref="origin/${candidate}"
      break
    fi
  done
fi

if [ -z "$base_ref" ]; then
  printf '%s\n' 'No origin base branch found.' >&2
  exit 1
fi

printf '%s\n' "$base_ref"
```

Then inspect the chosen base:

```bash
git diff --stat origin/<base>...HEAD
git diff --name-status origin/<base>...HEAD
git diff origin/<base>...HEAD
git log --oneline origin/<base>..HEAD
```

## Write Draft

1. Draft a title using Write The Title.
2. Draft the description using Write The Description.
3. Apply Maintain Accuracy until every statement is evidence-led.

## Review Existing Draft

1. Check whether the title identifies the primary outcome.
2. Check whether the description explains both what changed and why.
3. Remove unsupported claims, repetition, and low-value implementation detail.
4. Add missing migration, compatibility, rollout, or risk information when supported.
5. Preserve correct project terminology and the intended scope.
6. Apply Maintain Accuracy until every statement is evidence-led.

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
```

Include testing information only when the repository template requires it.

## Maintain Accuracy

- Base claims on the diff, commits, tests, and issue context.
- Do not claim that tests pass unless there is evidence they were executed successfully.
- Do not invent issue identifiers, deployment impact, compatibility guarantees, or performance results.
- Distinguish functional changes from refactoring with no intended behavior change.
- Mention migrations, configuration changes, feature flags, breaking changes, and rollout steps when present.
- Highlight meaningful reviewer risks and non-obvious tradeoffs without exaggerating them.
- Use technical terminology already established by the codebase.

## Output

Return the title and complete description. Use this wrapper unless the user or repository format requires otherwise:

```markdown
Title: <title>

Description:

<description>
```

Add a short `Missing context` note after the description only when unresolved information prevents
a reliable statement.
