---
name: weekly-notes
description: Summarize the last seven days of notes into five bullets and save the summary to a dated file. Use when the user asks for a weekly summary, a summary of their notes, or what happened this week.
---

# Weekly notes summary

Turn the user's notes from the last seven days into a short summary, and save
it so they can find it later.

## 1. Read the notes

1. Look in `~/my-project/notes/`. If the user named another folder, use that
   one instead.
2. Read every note file that changed in the last seven days. Skip the
   `summaries/` folder, which holds this skill's own output.
3. If the folder is missing or has no recent notes, say so and stop. Do not
   write a file.

## 2. Write the summary

Write exactly five bullets:

1. The most important thing that happened.
2. One thing that is finished.
3. One thing that is still open.
4. One thing the user said they would do next.
5. Anything they should not forget.

Keep each bullet to one short sentence. Use only facts from the notes. Do not
invent anything.

## 3. Save it

1. Make the folder `~/my-project/notes/summaries/` if it does not exist.
2. Save the summary as `~/my-project/notes/summaries/week-YYYY-MM-DD.md`, using
   today's date.
3. Start the file with the heading `# Week ending YYYY-MM-DD`.
4. After the five bullets, add a `## Sources` heading and list the note files
   you read.

If a summary for today already exists, ask before you replace it.

## 4. Tell the user

Show the five bullets in the chat, then the path of the file you saved.
