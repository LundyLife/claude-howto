---
name: commit
description: Make one git commit for the current changes, with a clear Conventional Commits message, after the user says yes. Use when the user asks to commit, save their work in git, or write a commit message.
---

# Make a git commit

Help the user make one git commit for the changes in the current project.

## 1. Look at the changes

1. Run `git status` to see which files changed.
2. Run `git diff HEAD` to see the changes.
3. Run `git log --oneline -10` to see the style of recent commit messages.

If there are no changes, say so and stop.

If you see a file that looks like it holds a secret (for example `.env`, a key
file, or a file with "password" or "token" in it), do not stage it. Tell the
user and ask what to do.

## 2. Write the message

If the user gave a message, use it. Otherwise write one in the Conventional
Commits style, `type: short description`:

| Type | Use for |
|---|---|
| `feat:` | A new feature |
| `fix:` | A bug fix |
| `docs:` | Documentation only |
| `refactor:` | A change in structure with no change in behavior |
| `test:` | Adding or fixing tests |
| `chore:` | Upkeep, such as tooling |

Keep the first line under 72 characters.

## 3. Ask first

Show the user:

- the files you will stage,
- the message.

Wait for the user to say yes. If they change the list or the message, use their
version.

## 4. Commit

1. Stage only the files the user agreed to, by name. Do not use `git add .`.
2. Run `git commit -m "<message>"`.
3. Show the new commit with `git log --oneline -1`.

Do not push the commit. Sharing it is a separate step the user does.
