# Write Merge Request

Creates or improves merge request and pull request titles and descriptions using the actual code
changes, commit history, repository conventions, and issue context.

The skill:

- writes concise, outcome-focused titles;
- follows existing MR or PR templates;
- separates behavioral changes from refactoring;
- avoids invented issue IDs, risks, and implementation claims;
- supports both GitLab merge requests and GitHub pull requests.

## Installation

Install the skill with `npx skills add`:

```bash
npx skills add https://github.com/kiero-pl/ai-skills --skill write-merge-request
```

You can also use the shorter `@` syntax:

```bash
npx skills add kiero-pl/ai-skills@write-merge-request
```

Restart the agent if it does not automatically discover the newly installed skill.

## Usage

Invoke the skill explicitly:

```text
Use $write-merge-request to analyze my current changes and draft a merge request.
```

It can also be triggered with phrases such as:

```text
Write PR
Write MR
Write merge request
Write pull request
```

Use it to improve an existing draft:

```text
Use $write-merge-request to review this MR title and description against the current diff.
```
