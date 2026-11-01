---
name: morning-brief
description: Build a short morning briefing from the notes/ folder and todo.md in ~/my-desk, list the open items, and keep a small chart of them as an artifact. Use when asked for a morning briefing, a daily briefing, or "what is on my desk today".
---

# Morning brief

Follow these steps in order.

## 1. Read the rules

Read `~/my-desk/.kiro/steering/briefing.md`. Follow it for the whole briefing.

## 2. Read the notes

Read every Markdown file under `~/my-desk/notes/`, including its subfolders.
Each subfolder is one area of life, for example `work`, `home` or `learning`.

An open item is a line that starts with `- [ ]`.
A done item is a line that starts with `- [x]`.

## 3. Read the to-do list

Read `~/my-desk/todo.md`. Its open items count too.

## 4. List the open items

Make one list of every open item. For each one, note:

- the file it came from
- its due date, if the line has one (written as YYYY-MM-DD)

Sort the list so the earliest due date comes first.
Items with no due date go last.

## 5. Write the briefing

Write the briefing the way `briefing.md` says: a heading, then five bullets.
Use the open-item list for the bullets. If there are more than five items,
the last bullet says how many more are open.

## 6. Draw a small chart

Make a small HTML bar chart: one bar per notes subfolder, plus one bar for
`todo.md`. Each bar's height is that place's number of open items.
Keep it to one self-contained HTML page with no outside links.

## 7. Keep the chart

Keep the chart as an artifact with the slug `morning-desk-chart`:

- If an artifact with that slug already exists, update it. That adds a new
  version.
- If it does not exist yet, save it with that slug.

Do not also show the chart as a widget in chat. That would save a second copy.

## 8. Reply

Reply with the briefing text only, then one line naming the chart artifact.
