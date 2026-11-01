---
name: lesson-quiz
description: "Quiz a learner on one Kiro Crew How To module (0-23) or the capstone with 10 questions, score the answers and point to sections to review. Use when the user asks to be quizzed or tested on a module, before, during or after reading it. Do not use for a whole-guide level check (use self-assessment) or to explain a topic instead of testing it."
---

# Lesson quiz

An interactive quiz with 10 questions on one module of this guide. It gives
feedback after each round and lists the sections to review.

## Before you start

You need:

- The Kiro Crew How To repository, so each module folder (`00-what-is-an-agent/`
  … `23-backup-and-hosting/`, `capstone-morning-desk/`) and its `README.md` can
  be read. If the user copied this skill to `~/.kiro/crew/skills/`, ask where
  they downloaded the repo (for example `~/kirocrew-howto`) and read from there.
- `references/question-bank.md` in this skill folder. It holds every question.

Rules:

- **Never invent questions or answers.** Ask only questions from
  `references/question-bank.md` for the chosen module. If the bank has none for
  it, say so and stop.
- **Score exactly.** Keep track of which shuffled option is correct for every
  question, and check each answer against it.
- **Ask about timing first** (before, during or after the module). It changes how
  the results are worded.
- **Use question cards when you can.** In the dashboard, ask with the
  `ask_question` tool: up to 4 questions per card, up to 6 options each. On
  other surfaces, or if no card can be shown, ask in plain text with numbered
  options and accept the number or the option text as the answer.

## Steps

### Step 1: Pick the module

If the user named a module (for example `$lesson-quiz 4` or
`$lesson-quiz hooks`), map it with this table. Accept `4`, `04` or `module 4`.

| User says | Module folder |
|---|---|
| `0`, `agent`, `what is an agent` | `00-what-is-an-agent` |
| `1`, `getting started`, `install`, `start` | `01-getting-started` |
| `2`, `approval`, `approval modes`, `asks first` | `02-approval-modes` |
| `3`, `sessions`, `chats`, `folders` | `03-sessions` |
| `4`, `memory`, `lessons`, `remember` | `04-memory` |
| `5`, `fix`, `mistake`, `undo`, `rewind` | `05-fix-a-mistake` |
| `6`, `prompts`, `steering`, `rules` | `06-prompts-and-steering` |
| `7`, `skills` | `07-skills` |
| `8`, `knowledge`, `documents`, `library` | `08-knowledge-library` |
| `9`, `secrets`, `safety`, `sandbox`, `protect` | `09-protect-secrets-and-files` |
| `10`, `connections`, `mcp`, `tools` | `10-connections` |
| `11`, `browser`, `website` | `11-browser` |
| `12`, `schedule`, `cron`, `daily summary` | `12-scheduled-jobs` |
| `13`, `monitors`, `watch`, `notifications` | `13-monitors` |
| `14`, `phone`, `slack`, `chat apps` | `14-phone-and-chat-apps` |
| `15`, `helpers`, `parallel`, `subagents` | `15-parallel-helpers` |
| `16`, `task runner`, `task file`, `away` | `16-task-runner` |
| `17`, `workflows` | `17-workflows` |
| `18`, `artifacts`, `versions` | `18-artifacts` |
| `19`, `mates`, `custom agents`, `specialists` | `19-mates-and-agents` |
| `20`, `hooks` | `20-hooks` |
| `21`, `webhooks` | `21-webhooks` |
| `22`, `apps` | `22-apps` |
| `23`, `backup`, `snapshot`, `hosting` | `23-backup-and-hosting` |
| `capstone`, `morning desk` | `capstone-morning-desk` |

If the user named none, ask which level first, then which module in it. With
question cards, use two cards; in plain text, use this list:

```text
Which module do you want a quiz on? Reply with the number.
Novice:        0 What is an AI agent? · 1 Get it running · 2 How often it asks first
               3 Tidy chats · 4 Remember me, or not · 5 Fix a mistake
Intermediate:  6 Rules and prompts · 7 Skills · 8 Your documents
               9 Protect secrets and files · 10 Connect your tools · 11 Use a website
               12 Daily summary · 13 Tell me when it changes · 14 Phone or chat app
Advanced:      15 Many tasks at once · 16 Work while away · 17 Restartable long jobs
               18 Keep what it made · 19 Named specialists
Expert:        20 Hooks · 21 Webhooks · 22 Build an app · 23 Back up, move, host
Capstone:      C My morning desk
```

### Step 2: Read the module

Read `<module-folder>/README.md` so you can explain answers. Read only the one
module, not all of them. Then take that module's 10 questions from
`references/question-bank.md`.

### Step 3: Ask about timing

```text
When are you taking this quiz?
1. Before the module (a pre-test of what you already know)
2. During the module (a progress check)
3. After the module (a mastery check)
```

### Step 4: Ask the questions in rounds

Ask the 10 questions in 5 rounds of 2. With question cards, put both questions
of a round on one card.

- **Shuffle the options** of every question before you show them. Do not show
  them in the bank's order, and do not always put the correct one first.
- In plain text, number the shown options `1` to `4`.
- After each round, say for each question whether the answer was right. If it
  was wrong, give the correct option and the one-line explanation from the bank.

### Step 5: Score and report

One point per correct answer, out of 10.

| Score | Grade |
|---|---|
| 9-10 | Mastered |
| 7-8 | Proficient |
| 5-6 | Developing |
| 3-4 | Beginning |
| 0-2 | Not yet |

Write the report with the template in `references/results-template.md`.

### Step 6: Offer what to do next

```text
What would you like to do next?
1. Retake this quiz
2. Take a quiz on another module
3. Explain a question I got wrong
4. Done
```

- **Retake**: go back to Step 4, with the same timing.
- **Another module**: go back to Step 1.
- **Explain**: ask which question, read that section of the module README and
  explain it with an example.

## Done when

- One module (0-23) or the capstone was chosen before any question.
- The timing was asked.
- 10 questions from the bank were asked, in 5 rounds of 2, with shuffled options.
- Every answer was scored against the tracked correct option (score 0-10).
- The report follows `references/results-template.md`.
- The follow-up choice was offered.

## Edge cases

- **Unknown module name:** show the module list and ask again.
- **The user stops early:** report the score out of the questions answered so far.
- **The module README is missing:** say so and stop. Do not make up content.
- **The bank has no questions for the module:** say so and stop.
- **No question card could be shown:** carry on in plain text.

## When to use this skill

Use it for: "quiz me on hooks", "lesson quiz 4", "test me on skills", "do I
understand connections", "quiz me before I start the memory module".

Do not use it for: "what is my level" (use self-assessment), "explain hooks",
"create a hook", "review my code".
