# Results report template

The report format for Step 5 ("Score and report"). Fill the bracketed
placeholders; keep the headings and table columns as shown.

```markdown
## Lesson quiz results: [Module number and title]

**Score: N/10** — [Grade]
**Quiz timing:** [Before / During / After] the module
**Question breakdown:** N conceptual correct, N practical correct

### Per-question results

| # | Category | Question (short) | Your answer | Result |
|---|----------|------------------|-------------|--------|
| 1 | Conceptual | [short question] | [their answer] | [Correct / Incorrect] |
| 2 | Practical | ... | ... | ... |
| ... | ... | ... | ... | ... |

### Incorrect answers — review these

[For each incorrect answer, show:]

**Q[N]: [Full question text]**
- Your answer: [what they chose]
- Correct answer: [correct option]
- Explanation: [the bank's explanation]
- Review: [the bank's Review heading, in the module README, for example
  "Step by step" in `07-skills/README.md`]

### [Timing-specific message]

[If before]:
**Pre-test score: N/10.** This is your starting point. Read the module, paying
most attention to the topics you missed, then take the quiz again.

[If during]:
**Progress check: N/10.** [7 or above: Good progress, keep going. 5-6: Review
the topics you missed before you go on. 0-4: Start the module again from the
top.]

[If after]:
**Mastery check: N/10.** [9-10: You know this module. Move on. 7-8: Review the
topics you missed and retake. Below 7: Spend more time with the module,
especially the sections above.]

### Next steps

- [If mastered]: Go on to the next module in the
  [learning roadmap](LEARNING-ROADMAP.md): [next module].
- [If proficient]: Review these sections, then retake: [list].
- [If developing or below]: Read the whole module again: [module]. Focus on
  [weak category].
```
