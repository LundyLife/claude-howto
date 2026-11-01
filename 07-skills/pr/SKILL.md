---
name: pr
description: Get changes ready for a pull request - format, lint, test, sum up the changes and draft the description. Use when the user asks to prepare a pull request, write a PR description, or check their work before review.
---

# Pull request preparation

Help the user get their changes ready for a pull request. Do not commit or push
anything. Report and wait.

## 1. Format and lint

Find how this project formats and checks code, for example a script in
`package.json` or a config file such as `.prettierrc` or `pyproject.toml`. Run
it.

If the project has no formatter or linter, say so and skip this step.

## 2. Run the tests

Find how this project runs its tests and run them.

If any test fails, stop. Show the user which tests failed and the error, and
ask what to do.

## 3. Sum up the changes

Run `git diff HEAD` and, if the branch has its own commits, `git log --oneline`
for them. Write a short summary of what changed, grouped by file or area.

## 4. Suggest a commit message

Suggest one message in the Conventional Commits style (`feat:`, `fix:`,
`docs:`, `refactor:`, `test:`, `chore:`).

## 5. Draft the description

Write a pull request description with these headings:

- **What changed**
- **Why it changed**
- **How it was tested**
- **Possible side effects**

Use only what you found in steps 1 to 3. If you do not know why something
changed, write "Ask the author" instead of guessing.

## 6. Report

Show the user the results of each step and the draft description. Wait for the
user. Do not commit, push or open the pull request yourself.
