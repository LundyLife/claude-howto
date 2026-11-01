---
name: self-assessment
description: "Find a learner's Kiro Crew level and build a personal learning path through the 24 Kiro Crew How To modules and the capstone. Runs a quick (2 minutes) or deep (5 minutes) check, scores ten skill areas, lists gaps and suggests where to start. Use when the user asks to assess their level, find where to start, check their skills, or what to learn next. Do not use to quiz one module (use lesson-quiz)."
---

# Self-assessment and learning path

An interactive check of what the learner has already done with Kiro Crew. It
gives a level (Novice, Intermediate, Advanced or Expert, as in
`LEARNING-ROADMAP.md`), a profile of ten skill areas, and a learning path that
skips what they already know.

## Rules

- **Use question cards when you can.** In the dashboard, ask with the
  `ask_question` tool, with `multiSelect: true` for every "which have you done"
  card: up to 4 questions per card, up to 6 options each. Add a "None of these"
  option to each list. On other surfaces, or if no card can be shown, show a
  numbered list and ask the user to reply with every number that applies, for
  example `1, 3`. "None" is a valid answer.
- **Do not invent modules or exercises.** Use only the modules and the
  recommendations in `references/topic-recommendations.md`.
- **Read only what you need.** Read a module README only when the user asks to
  start learning or for a deep dive. The repo may be wherever the user
  downloaded it, for example `~/kirocrew-howto`; ask if you cannot find it.
- **If unsure, start one level lower.** Say this to the user once.

## Step 1: Choose the mode

```text
How much time do you have?
1. Quick check: about 2 minutes. Gives your level and where to start.
2. Deep check: about 5 minutes. Scores ten skill areas and builds a path.
```

## Step 2A: Quick check

Ask three cards (or lists), one at a time.

```text
Card 1 of 3. Which of these are true for you? Pick every one that applies.
1. I have asked an AI a question and checked its answer.
2. I know an AI can be wrong.
```

If the user picked neither, they are a **Novice at Module 0**. Skip cards 2
and 3 and go to Step 3.

```text
Card 2 of 3. Which of these have you done in Kiro Crew? Pick every one that applies.
1. I opened the dashboard and chatted with the agent
2. I switched the approval mode on purpose
3. I saved a rule that the agent now follows
4. I used a saved prompt or a skill
```

```text
Card 3 of 3. Which of these have you done in Kiro Crew? Pick every one that applies.
5. I stored a secret in the Secrets Vault
6. I scheduled a job
7. I ran parallel helpers or a workflow
8. I wrote a hook or an app
```

**Level from the number of items picked on cards 2 and 3:**

| Items picked | Level | Start at |
|---|---|---|
| 0-2 | 🟢 Novice | The first unpicked item's module, from Module 0 |
| 3-5 | 🔵 Intermediate | Module 6, or the first unpicked item's module if it is earlier |
| 6-8 | 🟣 Advanced | Module 15; Module 20 if all eight are picked |

Item to module: 1 → 1, 2 → 2, 3 → 4, 4 → 6, 5 → 9, 6 → 12, 7 → 15, 8 → 20.

Then go to Step 3, using the quick template in `references/output-templates.md`.

## Step 2B: Deep check

Five rounds. Each round has two skill areas with two items each, so four items
per card. Each picked item is one point, so each area scores 0-2 and the total
is out of 20.

**Round 1: First steps, and chats and memory**

```text
Which of these have you done? Pick every one that applies.
1. Installed the desktop app, signed in, and used a change card and its Undo
2. Approved one action and rejected another, on purpose
3. Put chats in a sidebar folder and reopened one from Older Sessions
4. Saved a rule with "Remember: ...", or used an Incognito chat
```

Scoring: 1-2 → area A (Modules 1-2); 3-4 → area B (Modules 3-4).

**Round 2: Undo and safety, and rules, prompts and skills**

```text
Which of these have you done? Pick every one that applies.
1. Rewound a chat with Edit & Resend and restored a file with git
2. Kept a secret in the Secrets Vault, or set the Process Sandbox to strict
3. Sent a saved prompt with @name, or added a steering file
4. Made or installed a skill and loaded it with $name
```

Scoring: 1-2 → area C (Modules 5 and 9); 3-4 → area D (Modules 6-7).

**Round 3: Documents, tools and websites, and working without you**

```text
Which of these have you done? Pick every one that applies.
1. Added a folder to the Knowledge Library and checked a cited file
2. Added a connection (MCP server), or watched the agent use the Browser panel
3. Scheduled a job and triggered it to test it
4. Got a monitor alert in the bell, or chatted with the agent from Slack
```

Scoring: 1-2 → area E (Modules 8, 10 and 11); 3-4 → area F (Modules 12-14).

**Round 4: Bigger jobs, and keeping what it made**

```text
Which of these have you done? Pick every one that applies.
1. Asked for parallel helpers and got one combined answer
2. Ran a task file from the Task Runner page or with kirocrew run
3. Re-ran a workflow from the step that failed
4. Starred an artifact, changed it, and reverted it
```

Scoring: 1-2 → area G (Modules 15-16); 3-4 → area H (Modules 17-18).

**Round 5: Specialists and hooks, and building on top**

```text
Which of these have you done? Pick every one that applies.
1. Made a mate or a custom agent
2. Added a Stop hook with a loop guard
3. Started a job with a webhook, or built and installed an app
4. Took a snapshot and restored part of it into a second instance
```

Scoring: 1-2 → area I (Modules 19-20); 3-4 → area J (Modules 21-23).

**Level from the total:**

| Total | Level |
|---|---|
| 0-5 | 🟢 Novice |
| 6-11 | 🔵 Intermediate |
| 12-16 | 🟣 Advanced |
| 17-20 | 🔴 Expert |

If the user picked nothing at all, also ask card 1 of the quick check. If they
pick neither item there, start them at Module 0.

Then go to Step 3, using the deep template in `references/output-templates.md`.

## Step 3: Show the results

Fill the matching template in `references/output-templates.md`. For each area:

- **2/2**: mastered. Leave its modules out of the path.
- **1/2**: review. Point to the parts they have not done yet.
- **0/2**: learn. Add its modules to the path.

## Step 4: Build the learning path

Use `references/topic-recommendations.md` for each module in the path.

1. **Skip mastered modules.**
2. **Respect what each module needs first**, from the "Needs" column of
   `LEARNING-ROADMAP.md`. Novice Modules 0-5 go in order. Module 9 comes before
   Modules 10, 12 and 16.
3. **Add up the time** of the modules left, using the times in
   `LEARNING-ROADMAP.md`.
4. **Group** the modules left into phases of two or three.
5. **End with two or three practice projects** that combine their gaps. The
   capstone ("My morning desk") is a good last project once Modules 4-18 are
   done.
6. **Mention Feature Previews** if the path has Module 19 (Mates) or Module 21
   (Webhooks): each needs a switch in **Settings → Developer → Feature
   Previews**, shown in that module.

## Step 5: Offer what to do next

```text
What would you like to do next?
1. Start learning: walk me through the first module in my path
2. Explain one of my gaps
3. Set up a small practice project for my gaps
4. Take the check again
```

- **Start learning:** read the first gap module's README and walk the user
  through its first step.
- **Explain a gap:** ask which area, read its module README and explain the key
  ideas with examples.
- **Practice project:** design a small project with concrete steps that covers
  two or three gaps.
- **Again:** go back to Step 1.

## Edge cases

- **Nothing picked anywhere:** Novice. Start at Module 0, from the top.
- **The user disagrees with the level:** accept their choice and give the path
  for it, with a short list of earlier modules to check first.
- **The user names a topic they want** ("I want to learn hooks"): put that
  module in the path, with the modules it needs first, even if the score says
  otherwise.

## When to use this skill

Use it for: "assess my level", "where should I start", "what should I learn
next", "check my skills", "how good am I at Kiro Crew".

Do not use it for: "quiz me on hooks" (use lesson-quiz), "explain skills",
"create a skill", "review my code".
