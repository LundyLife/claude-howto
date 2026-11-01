<picture>
  <source media="(prefers-color-scheme: dark)" srcset="../resources/logos/kirocrew-howto-logo-dark.svg">
  <img alt="Kiro Crew How To" src="../resources/logos/kirocrew-howto-logo.svg">
</picture>

# Standing rules and reusable prompts

**Level:** Intermediate · **Time:** 30 minutes · **Surface:** Dashboard

You probably type some requests again and again, such as "summarize my notes".
You may also repeat the same rules, such as "write dates this way". This module
shows two tools that stop the retyping:

- A **saved prompt** is a request you keep and send with one word.
- A **steering file** is a rule the agent reads at the start of every chat.

It has three short lessons:

- **6.1** Save a prompt.
- **6.2** Write one steering rule.
- **6.3** Prompt, steering or memory: which one to use.

## What you will learn

- How to save a prompt on **Customize → Prompts**.
- How to send a saved prompt with `@name` or **Send to…**.
- What a steering file is, and where it lives.
- How to add a steering rule on **Customize → Steering**.
- How to give one sidebar folder its own steering with **Additional steering**.
- When to use a prompt, a steering file or memory.

## Words to know

| Word | What it means |
|---|---|
| **Prompt** | The text you send the agent. |
| **Saved prompt** | A prompt kept in a file with a name, so you can send it again with `@name`. |
| **Steering file** | A markdown file of standing rules. The agent reads it at the start of every chat, without you asking. |
| **Markdown** | Plain text with a few marks for layout: `#` for a heading, `-` for a bullet. Files end in `.md`. |
| **Front matter** | The settings block at the very top of a file, between two `---` lines. |
| **`inclusion: always`** | A front matter line that tells the agent to read this steering file in every chat. |
| **Global** | Applies in every project on your computer. |
| **Workspace** | Applies only in one project folder. The dashboard also calls it **This project** for prompts. |
| **Project folder** | The folder on your computer a chat works in, such as `~/my-project`. |

## Before you start

| You need | How to check |
|---|---|
| Kiro Crew running, from [Module 1](../01-getting-started/README.md) | The dashboard opens |
| You saved a lesson in [Module 4](../04-memory/README.md) | You know what "Remember: ..." does |
| A practice folder `~/my-project` with a `notes` folder and two or three short `.md` notes in it | The agent can list `~/my-project/notes` when you ask |
| A "Home projects" sidebar folder, from [Module 3](../03-sessions/README.md) | You can see it in the sidebar |
| This guide downloaded, for the copy steps | You can see the `06-prompts-and-steering/` folder |

> **Tip:** If you have no notes yet, ask the agent:
>
> ```text
> Create ~/my-project/notes with three short sample notes about my week.
> ```

## Step by step

### 1. Lesson 6.1: save a prompt

A saved prompt is a file. Its name becomes the word you type after `@`.

**Surface: Dashboard.**

1. Click **Customize** in the left rail, then **Prompts**.
2. Click **Create New Prompt**.
3. Fill in the form:
   - **Name:** `weekly-notes`
   - **Description (optional):** `Summarize this week's notes into five bullets`
   - **Prompt content:** paste the text below
   - **Scope:** **Global**

   ```markdown
   Read every note in `~/my-project/notes/` that changed in the last seven days.
   Then write a summary with exactly five bullets. Keep each bullet to one short
   sentence. After the bullets, list the note files you read. Do not change any
   files.
   ```

4. Click **Create**.

You should see `weekly-notes` in the prompt list. Names use lowercase letters,
digits and hyphens. The dashboard saves it as `weekly-notes.md` in
`~/.kiro/prompts`.

| Scope | Where the file is saved | Works in |
|---|---|---|
| **Global** | `~/.kiro/prompts` | Every chat |
| **This project** | `<project>/.kiro/prompts` | Only chats whose project folder is that project |

> **Tip:** This module ships a longer version,
> [prompts/weekly-notes.md](prompts/weekly-notes.md). To use it instead, copy it
> in a terminal (**Surface: kiro-cli (terminal)**):
>
> ```bash
> mkdir -p ~/.kiro/prompts
> ```
>
> ```bash
> cp 06-prompts-and-steering/prompts/weekly-notes.md ~/.kiro/prompts/
> ```

### 2. Send a saved prompt

**Surface: Dashboard.** Pick one way.

**Type `@` in the message box.**

1. Start a new chat.
2. Type `@weekly` and pick `weekly-notes` from the list.
3. Press Enter.

You should see `@weekly-notes` in your message, then a five-bullet summary of
your notes.

**Or use Send to… on the Prompts tab.**

1. On **Customize → Prompts**, open `weekly-notes`.
2. Click **Send to…**.
3. Pick **+ New Chat**, or one of your open chats.

You should see the chat open and the prompt sent as `@weekly-notes`.

> **In the terminal (kiro-cli)**
>
> The same files in `~/.kiro/prompts` are kiro-cli prompts. Inside
> `kiro-cli chat`, type `/prompts get weekly-notes` to use one.

### 3. Lesson 6.2: write one steering rule

A steering file holds rules you want in **every** chat, without asking. You
write it once.

| Scope | Where the file lives | Read by |
|---|---|---|
| Global | `~/.kiro/steering/*.md` | Every chat |
| Workspace | `~/my-project/.kiro/steering/*.md` | Chats whose project folder is `~/my-project` |

**Surface: Dashboard.**

1. Click **Customize**, then **Steering**.
2. Click **New Steering File**.
3. Fill in the form:
   - **File name:** `dates.md`
   - **Scope:** **Global — every project**
   - **Inclusion:** `always`
   - **Content:** paste the text below

   ```markdown
   # Dates

   Always write dates as YYYY-MM-DD, for example 2026-03-07.
   ```

4. Click **Create**.

You should see `dates.md` in the list of steering files.

Now start a **new** chat and ask:

```text
When is the next Monday?
```

You should see the date written like `2026-11-02`, not "November 2nd".

The same file ships in this module as [steering/dates.md](steering/dates.md).
To copy it in a terminal instead:

**Surface: kiro-cli (terminal).**

```bash
mkdir -p ~/.kiro/steering
```

**Surface: kiro-cli (terminal).**

```bash
cp 06-prompts-and-steering/steering/dates.md ~/.kiro/steering/
```

> **Tip:** This module teaches only `inclusion: always`. The other modes may not
> deliver the file to every chat, so a rule you rely on should say `always`.

**Write rules the agent can follow:**

- State the rule, then the reason: "Use `pytest`, because the project uses it."
- Make it something the agent can check. "Every new page gets a test" works.
  "Write clean code" does not.
- Keep it short. Every steering file is added to every chat, and long files
  crowd out your conversation.
- Put project rules in the project, and personal habits in the global folder.

More samples you can copy:

| File | Put it in | What it shows |
|---|---|---|
| [steering/personal.md](steering/personal.md) | `~/.kiro/steering/` | Your personal habits, for every project |
| [steering/project.md](steering/project.md) | `~/my-project/.kiro/steering/` | Rules for one project |
| [steering/api.md](steering/api.md) | A folder you add under **Additional steering** (step 4) | Rules for one sidebar folder of chats |

### 4. Give one sidebar folder its own steering

A sidebar folder can load extra steering files for its chats only. Chats in
other folders do not get them.

**Surface: Dashboard.**

1. Make a folder on disk for the rules, and put one steering file in it. For
   example, ask the agent:

   ```text
   Create ~/my-project/home-rules/home.md with the front matter "inclusion: always" and the rule "When I ask about a home project, list the tools I need first."
   ```

2. Find the full path of that folder. In the chat's **Terminal** panel (side
   panel, **+**, **Terminal**), run:

   **Surface: kiro-cli (terminal).**

   ```bash
   cd ~/my-project/home-rules
   ```

   **Surface: kiro-cli (terminal).**

   ```bash
   pwd
   ```

   Copy the path it prints.

3. In the sidebar, open the "Home projects" folder's menu and click **Folder
   settings**.
4. Under **Additional steering**, click **Add directory** and paste the path.
5. Click **Save changes**.

Start a new chat inside "Home projects" and ask `How do I hang a shelf?`. You
should see a list of tools first.

> **Note:** **Additional steering** does not work on native Windows. A
> subfolder inside "Home projects" also gets the folder's steering.

### 5. Lesson 6.3: prompt, steering or memory?

All three save you typing. They differ in **when** they apply and **who**
writes them.

| | Saved prompt | Steering file | Memory (lesson) |
|---|---|---|---|
| **When it applies** | Only when you type `@name` | Every chat, by itself | Every chat, by itself |
| **Who writes it** | You | You | The agent, when you say "Remember: ..." |
| **Where it lives** | `~/.kiro/prompts` | `~/.kiro/steering` or the project's `.kiro/steering` | Kiro Crew's memory |
| **Best for** | A long request you make often | Firm rules for you or a project | Small preferences you pick up as you go |
| **Example** | "Summarize my week's notes" | "Write dates as YYYY-MM-DD" | "Always answer in bullet points" |

If a steering file and a saved lesson disagree, the agent follows the steering
file. What you type in the chat now beats both.

A request with many steps that the agent should use by itself when it fits is a
**skill**. [Module 7](../07-skills/README.md) covers skills.

## Try it yourself

1. Put [steering/api.md](steering/api.md) in a folder of its own, such as
   `~/my-project/steering-api/`.
2. Add that folder under **Additional steering** for your "Home projects"
   sidebar folder (step 4).
3. In a chat **inside** "Home projects", ask: `What should an API error look like?`
   You should see the error shape from `api.md`.
4. In a chat **outside** the folder, ask the same question. You should see a
   general answer that does not follow `api.md`.

## Check your work

- [ ] Typing `@weekly-notes` puts the prompt in your message, and the agent
      sums up your notes.
- [ ] `dates.md` shows on **Customize → Steering**.
- [ ] A new chat writes dates as YYYY-MM-DD.
- [ ] A chat inside your folder follows its extra steering, and a chat outside
      does not.
- [ ] You can pick a prompt, a steering file or memory for a given need.

## Common problems

| What you see | What to do |
|---|---|
| `@weekly-notes` is not in the list | Check the file is `~/.kiro/prompts/weekly-notes.md`. Names use lowercase letters, digits and hyphens. |
| The prompt says the notes folder is missing | Create `~/my-project/notes` with a few `.md` files, or change the path in the prompt. |
| A new chat ignores the steering rule | Start a **new** chat. Check the file has `inclusion: always`, or no front matter at all. |
| A workspace steering file has no effect | The chat's project folder must be that project. Check it shows `my-project`. |
| **Additional steering** is not offered | It does not work on native Windows. Use a workspace steering file instead. |
| The folder steering applies to the wrong chats | It applies to every chat in that sidebar folder and its subfolders. Move other chats out. |

## What you learned

- A saved prompt is a named request. Send it with `@name` or **Send to…**.
- A steering file is a standing rule. The agent reads it in every chat.
- Global steering lives in `~/.kiro/steering`. Project steering lives in the
  project's `.kiro/steering`.
- A sidebar folder can add its own steering with **Additional steering**.
- Use a prompt for requests, steering for firm rules, and memory for small
  preferences.

## Next

A prompt is one request. A skill is a whole procedure the agent can pick up by
itself. Go on to [Module 7: Teach it a procedure: skills](../07-skills/README.md).

---
**Last updated:** 2026-10-30
**Checked against:** Kiro Crew public source @ 2808e9478c (github.com/kirodotdev/KiroCrew) and kiro.dev/docs/cli
*Part of the [Kiro Crew How To](../) guide.*
