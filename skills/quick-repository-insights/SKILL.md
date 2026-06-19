---
name: quick-repository-insights
description: Generates quick Git-history repository insights from bundled scripts.
license: MIT
disable-model-invocation: true
---

# Quick Repository Insights

Generate a fast Git-history diagnostic before reading code. Use the bundled script rather than reconstructing commands.

## Workflow

1. Confirm the current directory is inside the repository to inspect.
2. Choose a focused code directory for file-based analysis when one exists, preferring `app/`, then `src/`. Use `.` only when no focused directory is present or the user asks for the repository root.
3. Run `scripts/quick-repository-insights.sh <path>` from the repository being inspected, replacing `<path>` with the chosen directory.
4. Review the output and call out the strongest signals: churn hotspots, ownership concentration, inactive former owners, bug hotspots, momentum shape, and firefighting patterns.
5. Mention limitations when relevant: squash merges distort authorship, weak commit messages hide bug/firefighting signals, and generated files or lockfiles can dominate churn.

## Output

Return a concise report with:

- `Executive summary`: 3-5 bullets with the most important observations.
- `Evidence`: include or summarize the script tables without changing their counts.
- `Suggested next reads`: list the highest-risk files to inspect first, prioritizing files that appear in both churn and bug hotspot tables.

Do not claim causation from Git history alone. Treat the output as a triage map for where to read code first.
