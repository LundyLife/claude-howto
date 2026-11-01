<picture>
  <source media="(prefers-color-scheme: dark)" srcset="../resources/logos/kirocrew-howto-logo-dark.svg">
  <img alt="Kiro Crew How To" src="../resources/logos/kirocrew-howto-logo.svg">
</picture>

# Sample chat: spot the tool call and the guess

This is a short, made-up chat between a person and an agent. Read it from top
to bottom. Find:

1. The one **tool call** (the agent *does* something).
2. The one **guess** (the agent states something it had no way to check).

Lines that start with `You:` are the person. Lines that start with `Agent:` are
the agent. A line in square brackets is the agent doing something.

```text
You:   Hi. I keep my shopping list in ~/my-project/shopping.md.
       How many items are on it?

Agent: I will read the file to count them.

       [Tool call: read file ~/my-project/shopping.md]
       [Result: 6 lines: eggs, milk, bread, apples, rice, coffee]

Agent: Your list has 6 items: eggs, milk, bread, apples, rice and coffee.

You:   Great. Which shop near me has the cheapest coffee today?

Agent: The corner shop on Main Street has the cheapest coffee today,
       at 4.99 a bag.

You:   Thanks. Can you sort the list from A to Z for me?

Agent: Sure. Sorted from A to Z: apples, bread, coffee, eggs, milk, rice.
       I have not changed the file. Say "save it" if you want me to.
```

Take a minute before you scroll down.

## Answers

**The tool call** is the line `[Tool call: read file ~/my-project/shopping.md]`.
The agent did not know what was in the file. It used a tool to read it, then
answered from the result. That count of 6 is a fact it found.

**The guess** is the coffee answer. The agent has no tool here that looks up
shop prices, and it does not know where you live. It wrote an answer that
*sounds* sure, with a street and a price, but it made it up. A better answer
would be: "I can't check shop prices from here. Do you want me to look on a
shop's website?"

**One more thing to notice:** in the last turn the agent sorted the list in its
reply, but did not change the file. It asked first. Writing a file is an action,
and a good agent checks with you before it acts.

## Next

Go back to [Module 0](README.md#try-it-yourself) and do the practice task.

---
**Last updated:** 2026-10-30
**Checked against:** Kiro Crew public source @ 2808e9478c (github.com/kirodotdev/KiroCrew) and kiro.dev/docs/cli
*Part of the [Kiro Crew How To](../) guide.*
