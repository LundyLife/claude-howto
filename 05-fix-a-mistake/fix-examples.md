<picture>
  <source media="(prefers-color-scheme: dark)" srcset="../resources/logos/kirocrew-howto-logo-dark.svg">
  <img alt="Kiro Crew How To" src="../resources/logos/kirocrew-howto-logo.svg">
</picture>

# Fix examples: one for each kind of mistake

Short made-up chats that show which fix to reach for. Each one names what went
wrong, then shows the fix. All of them happen in the dashboard
(**Surface: Dashboard**) unless the step says Terminal panel.

> **Remember:** Rewind fixes the chat. Git fixes the files.

## 1. It misread you: Edit & Resend

**What went wrong:** your request was unclear, so the answer is about the wrong
thing.

```text
You:   Write a short note about the meeting.
Agent: Here is a note about the team meeting on Monday ...
```

You meant the parents' meeting at school. Hover over your message, click
**More actions**, then **Edit & Resend**, and change it:

```text
You:   Write a short note to my child's teacher about the parents' meeting on Thursday.
Agent: Hello, thank you for the parents' meeting on Thursday ...
```

The first answer is gone. The chat reads as if you asked the clear question
first.

## 2. Your question was fine, the answer was not: Regenerate

**What went wrong:** the agent understood you, but you do not like this answer.

```text
You:   Suggest a name for a small grey cat.
Agent: How about "Shadow"?
```

Hover over the reply and click **Regenerate**:

```text
Agent: How about "Pebble"?
```

Use **Previous version** and **Next version** on the reply to compare the two.

## 3. You want to try another idea: Fork

**What went wrong:** nothing yet. You want to try a second plan and keep the
first.

```text
You:   Plan a three-day trip to the coast by train.
Agent: Day 1: take the 9am train ...
```

Hover over the reply, click **Fork conversation from here**, then **Fork with
earlier messages**. In the new chat:

```text
You:   Same trip, but by car.
Agent: Day 1: leave at 8am and drive ...
```

You now have two chats: one train plan, one car plan.

## 4. It changed a file you did not want changed: git

**What went wrong:** the agent edited a file. Going back in the chat will not
undo it.

```text
You:   Tidy up shopping.txt.
Agent: I sorted shopping.txt into groups and removed the duplicate lines.
```

You wanted the old order. First check what changed: open the side panel, click
**+**, then **Git**. `shopping.txt` is in the list of changes. Then ask:

```text
You:   Put shopping.txt back the way it was in the last commit.
Agent: I ran git restore shopping.txt. The file now matches the last commit.
```

Or, in the **Terminal** panel:

```bash
git restore shopping.txt
```

This only works if `shopping.txt` was committed before the change.

## 5. It deleted a file: git

**What went wrong:** the agent removed a file you needed.

```text
You:   Clean up the old files in this folder.
Agent: I deleted draft-old.txt and recipe-v1.txt.
```

You still needed `recipe-v1.txt`. If it was committed, ask:

```text
You:   Bring back recipe-v1.txt from the last commit.
Agent: I ran git restore recipe-v1.txt. The file is back.
```

## 6. You rewound the chat and thought the file was fixed

**What went wrong:** you used **Edit & Resend** after a file change and expected
the file to go back too.

```text
You:   Add "Call the plumber" to todo.txt.
Agent: Done. todo.txt now ends with "Call the plumber".
```

You use **Edit & Resend** to change the request to "Call the electrician".

```text
Agent: Done. todo.txt now ends with "Call the electrician".
```

`todo.txt` now has **both** lines. The rewind changed the chat, not the file.
Fix the file with git, as in example 4.

## 7. A saved report or chart got a bad edit (preview)

**What went wrong:** the agent changed a report it saved for you, and the new
version is worse.

```text
You:   Go back to version 1 of the step-count chart.
Agent: I used artifact_revert. The chart is back to version 1.
```

Saved reports and charts are called artifacts. They keep their old versions.
Module 18 teaches this in full.

## 8. Your whole setup is broken (preview)

**What went wrong:** something broke many of your settings at once.

Kiro Crew can pack your memory, schedules and settings into one backup file and
unpack it later. In a terminal:

```bash
kirocrew snapshot
```

That makes a backup. `kirocrew restore` puts one back. Module 23 teaches this
in full, with the safety steps.

---
**Last updated:** 2026-10-30
**Checked against:** Kiro Crew public source @ 2808e9478c (github.com/kirodotdev/KiroCrew) and kiro.dev/docs/cli
*Part of the [Kiro Crew How To](../) guide.*
