# Inbox Capture Workflow

Use this workflow when the user wants to save a quick thought, idea, or loose note to the inbox.

## Inputs

Determine:

- the thought or idea to capture;
- the date, defaulting to today.

## Steps

1. Identify the content and date.
   Completion criterion: the thought and date are known.

2. Build the file path.
   Completion criterion: the path resolves to `00_Inbox/<YYYY-MM-DD>-<kebab-title>.md` using the vault's actual inbox folder name.

3. Write the note using the inbox template.
   Completion criterion: the file is created with frontmatter and the user's content under a `## Notes` heading.

4. Confirm the save.
   Completion criterion: the user is told the path where the note was saved.

## Rules

- Write the file directly. Do not return a code block unless the user asks.
- Do not analyze, categorize, or reframe the thought.
- Do not convert the thought into a task or action item.
- Use the vault's actual folder structure — detect the real inbox folder name from the user's vault.
- Preserve the user's exact wording; only fix obvious spelling or formatting issues.

## Output

Report the saved path to the user. Do not echo the full content unless asked.
