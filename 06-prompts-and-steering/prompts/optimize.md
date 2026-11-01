---
description: Review code for performance problems and suggest fixes
---

# Code optimization review

Review the code I point you to. If I did not name a file, ask me which one.

Look for these problems, most important first:

1. **Slow parts**: loops inside loops, work repeated on every pass, slow lookups.
2. **Memory waste**: files or connections never closed, data kept longer than needed.
3. **Better approaches**: a simpler algorithm or data structure that does the same job.
4. **Caching chances**: the same result worked out more than once.
5. **Concurrency problems**: two pieces of code changing the same data at once.

For each problem you find, give:

- How serious it is (Critical, High, Medium or Low)
- Where it is (file and line)
- What is wrong, in plain words
- A suggested fix, with a short code example

Do not change any files. Only report what you found.
