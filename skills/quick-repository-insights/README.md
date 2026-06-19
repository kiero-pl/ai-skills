# Quick Repository Insights

Generates quick Git-history insights before reading code. The skill reports churn hotspots,
ownership concentration, bug-related file hotspots, project momentum, and firefighting
patterns.

This skill was inspired by Ally Piechowski's article
[The Git Commands I Run Before Reading Any Code](https://piechowski.io/post/git-commands-before-reading-code/).

The skill includes bundled scripts so agents use the intended Git commands instead of
guessing or rewriting them.

## Installation

Install the skill with `npx skills add`:

```bash
npx skills add https://github.com/kiero-pl/ai-skills --skill quick-repository-insights
```

You can also use the shorter `@` syntax:

```bash
npx skills add kiero-pl/ai-skills@quick-repository-insights
```

Restart the agent if it does not automatically discover the newly installed skill.

## Usage

Invoke the skill explicitly:

```text
Use $quick-repository-insights to analyze this repository.
```

The skill is designed for direct invocation only.

## License

MIT
