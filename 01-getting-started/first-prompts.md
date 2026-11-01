<picture>
  <source media="(prefers-color-scheme: dark)" srcset="../resources/logos/kirocrew-howto-logo-dark.svg">
  <img alt="Kiro Crew How To" src="../resources/logos/kirocrew-howto-logo.svg">
</picture>

# First prompts to try

Practice prompts for your first chats. None of them ask the agent to change a
file. You learn how actions and approvals work in
[Module 2](../02-approval-modes/README.md).

**Surface: Dashboard.** Copy each prompt into the message box and press Enter.

## Part 1: your three Module 0 prompts

Paste the three prompts you wrote on the
[worksheet](../00-what-is-an-agent/three-prompts-worksheet.md), one at a time.
If you skipped it, use these:

```text
Dinner ideas.
```

```text
Give me five easy dinner ideas for weeknights. Each one should take under 30 minutes and use no oven. Answer as a numbered list, one line each.
```

```text
Give me five easy dinner ideas for weeknights. Each one should take under 30 minutes and use no oven. Answer as a numbered list, one line each, like this example:

1. Egg fried rice - 15 min - eggs, rice, peas, soy sauce
```

**Expect:**

| Prompt | What you will likely see |
|---|---|
| Vague | A long, general answer, or questions back to you. |
| Clear | Five short lines, close to what you asked. |
| Clear plus example | Five lines in the same style as your example. |

Write down which one needed no follow-up. That is the habit to keep.

## Part 2: the "it can't know" test

```text
What did I eat for breakfast today?
```

**Expect:** the agent says it cannot know, or asks you. It has no tool that
sees your breakfast. If it names a meal as if it knew, that is a **guess**, like
the coffee price in the [Module 0 sample chat](../00-what-is-an-agent/sample-transcript.md).

Try one more:

```text
How sure are you about that answer, and how could you check it?
```

**Expect:** a short note on what it knows and what it would need to check.

## Part 3: keep talking in the same chat

A chat remembers what you said earlier in it. Send these two in order:

```text
Help me plan a 30-minute study session to learn what a terminal is. Give me a numbered list.
```

```text
Make it shorter, and add a five-minute break in the middle.
```

**Expect:** the second answer changes the first plan. You did not have to repeat
it.

## Part 4: ask it about itself

```text
Where do I start a new chat?
```

```text
Where is the Customize page, and what is on it?
```

**Expect:** a click path for each, such as **Sessions** or **Customize** on the
rail. Follow it and check it is right.

## Tips for your own prompts

- **Say the shape.** "A numbered list" or "two sentences".
- **Say the limits.** "Under 100 words", "no oven".
- **Give an example** when the style matters.
- **Ask how it knows** when the answer matters.
- **Keep going in the same chat** to refine an answer.

## Next

Go back to [Module 1](README.md#check-your-work), or continue with
[Module 2: Decide how often it asks first](../02-approval-modes/README.md).

---
**Last updated:** 2026-10-30
**Checked against:** Kiro Crew public source @ 2808e9478c (github.com/kirodotdev/KiroCrew) and kiro.dev/docs/cli
*Part of the [Kiro Crew How To](../) guide.*
