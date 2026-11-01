<picture>
  <source media="(prefers-color-scheme: dark)" srcset="../resources/logos/kirocrew-howto-logo-dark.svg">
  <img alt="Kiro Crew How To" src="../resources/logos/kirocrew-howto-logo.svg">
</picture>

# Fix a mistake

**Level:** Novice · **Time:** 30 minutes · **Surface:** Dashboard · **Needs:** git

The agent will get things wrong sometimes. It may misread your request, or
change a file in a way you did not want. This module shows how to go back.

The fix depends on **what** went wrong. Going back in the chat does not undo
changes to files. Keep this line in mind for the whole module:

> **Remember:** Rewind fixes the chat. Git fixes the files.

## What you will learn

- Which tool fixes which kind of mistake.
- How to change a message you sent with **Edit & Resend**.
- How to get another answer with **Regenerate**.
- How to try a different path with **Fork**.
- Why going back in the chat leaves files as they are.
- How to see a file change in the **Git** tab and undo it with git.

## Words to know

| Word | What it means |
|---|---|
| **Rewind** | Go back to an earlier point in the chat. In the dashboard you do it with **Edit & Resend**. |
| **Edit & Resend** | Change a message you sent, then send it again. The replies below it are replaced. |
| **Regenerate** | Ask for a new answer to the same message. You can switch between the old and new answers. |
| **Fork** | Make a new chat that starts with a copy of this one. The old chat does not change. |
| **git** | A free program that saves versions of the files in a folder, so you can go back to an old version. |
| **Repository** | A folder that git watches. People often say "repo". |
| **Commit** | One saved version of your files in git, with a short message. |
| **`git restore`** | The git command that puts a file back the way it was in the last commit. |
| **Git tab** | A tab in the chat's side panel that shows which files changed since the last commit. |
| **Terminal panel** | A tab in the chat's side panel where you can type commands, such as git commands. |

## Before you start

| You need | How to check |
|---|---|
| Kiro Crew running, from [Module 1](../01-getting-started/README.md) | The dashboard opens |
| A practice folder, `~/my-project`, with `hello.txt` in it | The agent can read `hello.txt` when you ask |
| A chat whose project folder is `~/my-project` | The chat's project folder shows `my-project` |
| git installed | Run `git --version` in a terminal. It prints a version number. |

You read [Module 2](../02-approval-modes/README.md) and
[Module 3](../03-sessions/README.md) first.

If git is not installed, get it from [git-scm.com](https://git-scm.com/downloads).

## Step by step

### 1. Know which fix fits which mistake

| What went wrong | Fix it with | Where |
|---|---|---|
| The agent misread you, or the answer is bad | **Edit & Resend**, **Regenerate** or **Fork** | This module |
| A file was changed or deleted | git: the **Git** tab shows it, `git restore` undoes it | This module |
| A saved report or chart got a bad edit | The agent's `artifact_revert` tool goes back to an older version | Preview only. Module 18 teaches it. |
| Your whole Kiro Crew setup is broken | `kirocrew snapshot` and `kirocrew restore` | Preview only. Module 23 teaches it. |

### 2. Make your folder a git repository

git can only bring a file back if it saved a version first. Do this once per
folder.

**Surface: Dashboard.** In a chat whose project folder is `~/my-project`, ask:

```text
Make this folder a git repository and save a first commit with the message "first version".
```

If an approval card appears, click **Approve**.

You should see the agent run git commands and say it made the first commit.

> **In a terminal. Surface: kiro-cli (terminal).**
>
> You can do the same in any terminal, or in the chat's **Terminal** panel
> (open the side panel, click **+**, then **Terminal**):
>
> ```bash
> cd ~/my-project
> ```
>
> ```bash
> git init
> ```
>
> ```bash
> git add hello.txt
> ```
>
> ```bash
> git commit -m "first version"
> ```
>
> If git asks who you are, set your name and email once, then commit again:
>
> ```bash
> git config --global user.name "Your Name"
> ```
>
> ```bash
> git config --global user.email you@example.com
> ```

### 3. Let the agent change a file

**Surface: Dashboard.** In the same chat, ask:

```text
Add a new last line to hello.txt that says "Good morning".
```

If an approval card appears, click **Approve**.

You should see the agent say it changed `hello.txt`.

### 4. Change your request with Edit & Resend

Say you meant "Good night", not "Good morning".

**Surface: Dashboard.**

1. Hover over your message ("Add a new last line ...").
2. Click **More actions**, then **Edit & Resend**.
3. Change `Good morning` to `Good night`.
4. Click **Send**.

The dashboard warns you: **Sending replaces the replies below**. You should see
the old reply disappear and a new one take its place. The chat now reads as if
you had asked for "Good night" from the start.

> **Tip:** From an empty message box, press ⌘↑ (macOS) or Ctrl+↑ to open your
> last message for editing.

### 5. See that the file did not go back

Now look at the file.

**Surface: Dashboard.** Ask:

```text
Show me hello.txt.
```

You should see **both** lines: "Good morning" and "Good night". Edit & Resend
rewound the chat. It did not undo the first change to the file.

### 6. See the change in the Git tab

**Surface: Dashboard.**

1. Open the chat's side panel.
2. Click **+**, then **Git**.

You should see your repository, its branch, and `hello.txt` in the list of
uncommitted changes. The Git tab shows what changed. It has no undo button. You
undo with git in the next step.

### 7. Put the file back with git

Pick one way.

**Ask the agent.** **Surface: Dashboard.**

```text
Put hello.txt back the way it was in the last commit.
```

If an approval card appears, click **Approve**.

**Or type it yourself** in the **Terminal** panel (open the side panel, click
**+**, then **Terminal**):

**Surface: kiro-cli (terminal).**

```bash
git restore hello.txt
```

> **Warning:** `git restore` throws away every change to that file since the
> last commit. Only run it on a file you want to reset.

You should see `hello.txt` drop out of the Git tab's list of changes. Ask the
agent to show the file again. Neither new line is there.

### 8. Get another answer with Regenerate

Use Regenerate when the answer is poor but your question was fine.

**Surface: Dashboard.**

1. Ask a question:

   ```text
   Suggest a name for a small cat.
   ```

2. Hover over the reply and click **Regenerate**.

You should see a new answer. Use **Previous version** and **Next version** on
the reply to switch between the answers.

### 9. Try another path with Fork

Use Fork when you want to try a different idea and keep the first one.

**Surface: Dashboard.**

1. Hover over a reply in the middle of the chat.
2. Click **Fork conversation from here**, then **Fork with earlier messages**.

You should see a new chat with the messages up to that reply. The first chat is
not changed. Like Edit & Resend, Fork copies the chat, not your files.

## Try it yourself

1. Ask the agent: `Create notes.txt with the line "Buy milk", then commit it.`
2. Fork the chat before the next step (step 9).
3. In the fork, ask: `Add the line "Buy eggs" to notes.txt.`
4. Open the **Terminal** panel and run:

   **Surface: kiro-cli (terminal).**

   ```bash
   git restore notes.txt
   ```

You should see `notes.txt` hold only "Buy milk" again. The first chat never
asked for eggs, but the file changed anyway, because both chats share the same
folder. Git put it back.

See [fix-examples.md](fix-examples.md) for more short examples, one for each
kind of mistake.

## Check your work

- [ ] You rewound a chat with **Edit & Resend**.
- [ ] You saw that the file stayed changed after the rewind.
- [ ] You saw the change in the **Git** tab.
- [ ] You put the file back with git.
- [ ] You can say which tool fixes a bad answer and which fixes a bad file.

## Common problems

| What you see | What to do |
|---|---|
| `git: command not found` | Install git from [git-scm.com](https://git-scm.com/downloads), then open a new terminal. |
| `fatal: not a git repository` | Run step 2 first, in the same folder. |
| git asks "Please tell me who you are" | Run the two `git config` lines in step 2, then commit again. |
| The Git tab shows no repository | The chat's project folder must be the git folder. Check it is `~/my-project`. |
| The file is still wrong after Edit & Resend | That is expected. Rewind fixes the chat only. Use git (step 7). |
| `git restore` did nothing | The file had no change since the last commit, or it was never committed. Commit before risky work. |
| I lost a file I never committed | git cannot bring it back. Commit often, before big jobs. |

## What you learned

- Pick the fix by what went wrong: the chat, a file, a saved report or the
  whole setup.
- **Edit & Resend** rewinds the chat. **Regenerate** gives another answer.
  **Fork** copies the chat to try another path.
- None of those undo file changes.
- The **Git** tab shows what changed. `git restore` puts a file back.
- Commit before you let the agent make big changes.

> **Remember:** Rewind fixes the chat. Git fixes the files.

## Next

You keep typing the same requests and rules. Go on to
[Module 6: Standing rules and reusable prompts](../06-prompts-and-steering/README.md).

---
**Last updated:** 2026-10-30
**Checked against:** Kiro Crew public source @ 2808e9478c (github.com/kirodotdev/KiroCrew) and kiro.dev/docs/cli
*Part of the [Kiro Crew How To](../) guide.*
