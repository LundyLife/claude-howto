<picture>
  <source media="(prefers-color-scheme: dark)" srcset="resources/logos/kirocrew-howto-logo-dark.svg">
  <img alt="Kiro Crew How To" src="resources/logos/kirocrew-howto-logo.svg">
</picture>

# Glossary

Every term the guide uses, one line each, in alphabetical order. The last
column names the module that teaches it first. Each module also has its own
**Words to know** table.

| Term | What it means | Module |
|---|---|---|
| **Action** | Something the agent does, not just says: make a folder, write a file, run a command. | [2](02-approval-modes/README.md) |
| **Agent** | An AI model that can also *do* things for you, like read a file or run a command. | [0](00-what-is-an-agent/README.md) |
| **Agent template** | Another name for a custom agent's file. A mate is "built from" one. | [19](19-mates-and-agents/README.md) |
| **Allowlist** | The tools you allow ahead of time for a terminal task run: the setting `hooks.auto_approve_tools`. | [16](16-task-runner/README.md) |
| **App** | An add-on for Kiro Crew. It can bring pages, skills, agents, scheduled jobs and its own background program. | [22](22-apps/README.md) |
| **App manifest** | An app's `app.json` file. It lists what the app brings and what it may do. | [22](22-apps/README.md) |
| **App token** | A Slack app's token for Socket Mode. It starts with `xapp-`. | [14](14-phone-and-chat-apps/README.md) |
| **Approval** | When the agent stops and asks "May I do this?" before a tool call. | [0](00-what-is-an-agent/README.md) |
| **Approval card** | A box in the chat that shows an action, with **Approve** and **Reject** buttons. | [2](02-approval-modes/README.md) |
| **Approval mode** | How often the agent asks before an action: **Normal**, **Reads**, **Trust** or **YOLO**. | [2](02-approval-modes/README.md) |
| **Approval pill** | The small button in the message box that shows the current approval mode. | [2](02-approval-modes/README.md) |
| **Artifact** | Something the agent made that Kiro Crew keeps for you, such as a chart or a page, with a stable name. | [18](18-artifacts/README.md) |
| **Auto-approve** | The agent acts without asking you. **Trust** and **YOLO** both auto-approve. | [2](02-approval-modes/README.md) |
| **Bearer token** | A token sent in the `Authorization: Bearer <token>` header of a web request. | [21](21-webhooks/README.md) |
| **Bell** | The bell icon in the dashboard's top bar. It opens your notifications. | [13](13-monitors/README.md) |
| **Bot token** | A Slack app's token for sending and reading messages. It starts with `xoxb-`. | [14](14-phone-and-chat-apps/README.md) |
| **Briefing** | A short summary you read at the start of the day. | [Capstone](capstone-morning-desk/README.md) |
| **Browser panel** | A small web browser in the chat's side panel. The agent drives it while you watch. | [11](11-browser/README.md) |
| **Build** | Turn an app page's source code into the one file the dashboard loads. | [22](22-apps/README.md) |
| **Capstone** | A final project that uses what you learned in many modules. | [Capstone](capstone-morning-desk/README.md) |
| **Change card** | A box the agent puts in the chat to offer a settings change. Nothing changes until you press its button. | [1](01-getting-started/README.md) |
| **Channel** | A chat app you can use instead of the dashboard, such as Slack or Telegram. | [14](14-phone-and-chat-apps/README.md) |
| **Check-in** | A scheduled time when a mate reviews its goal: a daily reminder, a weekly report or a monthly review. | [19](19-mates-and-agents/README.md) |
| **Citation** | The line in an answer that says where a fact came from. | [8](08-knowledge-library/README.md) |
| **Click path** | The list of things to click to reach a page, written like **Settings → Chat**. | [1](01-getting-started/README.md) |
| **Commit** | One saved version of your files in git, with a short message. You can always go back to it. | [5](05-fix-a-mistake/README.md) |
| **Completion event** | The message a finished helper sends back to the main agent with its answer. | [15](15-parallel-helpers/README.md) |
| **Component** | One part of a snapshot, such as `memory` or `crons`. You can restore some parts and skip others. | [23](23-backup-and-hosting/README.md) |
| **Computer use** | An opt-in feature that lets the agent drive desktop apps, not web pages. Off by default. | [11](11-browser/README.md) |
| **Connection** | Kiro Crew's word for an MCP server or a signed-in outside service. | [10](10-connections/README.md) |
| **Container** | A sealed box that runs a program and everything it needs, often on a server. | [23](23-backup-and-hosting/README.md) |
| **Credential folder** | A folder where other programs keep their secrets, such as `~/.ssh` or `~/.aws`. | [9](09-protect-secrets-and-files/README.md) |
| **Cron expression** | Five fields that say when a job runs: minute, hour, day of month, month, day of week. `0 8 * * 1-5` means 8:00, Monday to Friday. | [12](12-scheduled-jobs/README.md) |
| **Cron job** | Another name for a scheduled job. | [12](12-scheduled-jobs/README.md) |
| **Custom agent** | A small JSON file that gives a chat a name, instructions and a list of tools. It has no memory of its own. | [19](19-mates-and-agents/README.md) |
| **Cycle** | One wake-up and check in a monitor loop. | [13](13-monitors/README.md) |
| **Cycle cap** | The most cycles a monitor loop may run. It is a safety limit, not a sign of success. | [13](13-monitors/README.md) |
| **Dashboard** | The window where you chat and change settings. In the desktop app, it is the app window. | [1](01-getting-started/README.md) |
| **Data folder** | Where Kiro Crew keeps your data, `~/.kiro/crew` by default. `KIROCREW_HOME` points it somewhere else. | [23](23-backup-and-hosting/README.md) |
| **Denied Commands** | A list of command patterns Kiro Crew refuses, under Settings → Security. A speed bump, not a wall. | [9](09-protect-secrets-and-files/README.md) |
| **Deny by default** | Every tool is refused unless you allowed it ahead of time. | [16](16-task-runner/README.md) |
| **Description** | One sentence in a skill's front matter that says what it does and when to use it. | [7](07-skills/README.md) |
| **Digest** | One short summary made from several longer notes. | [17](17-workflows/README.md) |
| **Discover** | The app store page in the dashboard, at `/apps`. | [22](22-apps/README.md) |
| **Drive a page** | Open a web page, click, type and read the result, the way a person would. | [11](11-browser/README.md) |
| **Edit & Resend** | Change a message you sent, then send it again. The replies below it are replaced. | [5](05-fix-a-mistake/README.md) |
| **Embedding model** | A small model that lets search match by meaning. Until it downloads, search matches exact words only. | [8](08-knowledge-library/README.md) |
| **Enable** | Turn an installed app on. A disabled app brings nothing. | [22](22-apps/README.md) |
| **Engine** | The program that does the agent's thinking and tool use. Kiro Crew reaches it through kiro-cli. | [1](01-getting-started/README.md) |
| **Environment variable** | A named value, such as `KIROCREW_HOME`, that a program can read. | [10](10-connections/README.md) |
| **Ephemeral session** | A short-lived session that runs one turn and is then thrown away. Webhook turns run in one. | [21](21-webhooks/README.md) |
| **Event** | The moment a hook runs, such as "the turn ended". | [20](20-hooks/README.md) |
| **Exit code** | A number a program returns when it ends. `0` means it worked. | [20](20-hooks/README.md) |
| **Feature Preview** | A feature that is still being finished. It is hidden until you switch it on in **Settings → Developer → Feature Previews**. | [19](19-mates-and-agents/README.md) |
| **Folder** | A named group of chats in the sidebar, such as "Home projects". | [3](03-sessions/README.md) |
| **Fork** | Make a new chat that starts with a copy of an old chat's messages. The old chat does not change. | [3](03-sessions/README.md) |
| **Front matter** | The settings block at the very top of a file, between two `---` lines. | [6](06-prompts-and-steering/README.md) |
| **git** | A free program that saves versions of the files in a folder, so you can go back. | [5](05-fix-a-mistake/README.md) |
| **`git restore`** | The git command that puts a file back the way it was in the last commit. | [5](05-fix-a-mistake/README.md) |
| **Git tab** | A tab in the chat's side panel that shows which files changed since the last commit. | [5](05-fix-a-mistake/README.md) |
| **Global** | Applies in every project on your computer. | [6](06-prompts-and-steering/README.md) |
| **Goal** | One paragraph about what a mate works toward. You confirm it on a card. | [19](19-mates-and-agents/README.md) |
| **Guess** | An answer the model made up because it had no facts. It can sound sure and still be wrong. | [0](00-what-is-an-agent/README.md) |
| **Headroom** | Free memory and processor time on your computer. Each helper needs some. | [15](15-parallel-helpers/README.md) |
| **Health badge** | The label on a connection's row that says what the last probe found: `ok`, `needs_auth`, `error` or `timeout`. | [10](10-connections/README.md) |
| **Helper** | A second agent that the main agent starts to do one part of the work. Also called a *subagent*. | [15](15-parallel-helpers/README.md) |
| **Hook** | A shell command that Kiro Crew runs by itself when an event happens. | [20](20-hooks/README.md) |
| **In parallel** | At the same time, instead of one after another. | [15](15-parallel-helpers/README.md) |
| **`inclusion: always`** | A front matter line that tells the agent to read a steering file in every chat. | [6](06-prompts-and-steering/README.md) |
| **Incognito** | A memory mode: the chat uses what is already saved, but saves nothing new. | [4](04-memory/README.md) |
| **Independent** | A task that does not need another task's result to start. | [15](15-parallel-helpers/README.md) |
| **Instance** | One running copy of Kiro Crew. Two instances need different data folders and ports. | [23](23-backup-and-hosting/README.md) |
| **Interval** | The time between two cycles of a monitor loop, for example 5 minutes. | [13](13-monitors/README.md) |
| **Item** | One piece of a document in the Knowledge Library. A long file is split into several items. | [8](08-knowledge-library/README.md) |
| **Kiro Crew** | The program you talk to. It keeps your chats, memory and schedules, and shows the dashboard. | [1](01-getting-started/README.md) |
| **kiro-cli** | A small helper program that connects Kiro Crew to the AI model. You install it once and sign in. | [1](01-getting-started/README.md) |
| **Knowledge Library** | A searchable store of your own documents, with a source on every result. | [8](08-knowledge-library/README.md) |
| **`learn_add`** | The tool the agent uses to save a lesson. | [4](04-memory/README.md) |
| **`learn_list`** | The tool the agent uses to list saved lessons. | [4](04-memory/README.md) |
| **`learn_remove`** | The tool the agent uses to delete a lesson. | [4](04-memory/README.md) |
| **Lesson** | One saved rule, such as "Always answer in bullet points". New chats follow it. | [4](04-memory/README.md) |
| **Library (apps)** | Your installed apps, at `/apps/library`. You enable, pin and unpin them there. | [22](22-apps/README.md) |
| **Library (workflows)** | Where saved workflows live, so you can run them again by name. | [17](17-workflows/README.md) |
| **Live** | The version of an artifact you see now. | [18](18-artifacts/README.md) |
| **Loaded-skill card** | A small card with a book icon that appears when you load a skill with `$name`. | [7](07-skills/README.md) |
| **Local server** | An MCP server that runs as a program on your computer. Its entry has a `command`. | [10](10-connections/README.md) |
| **Loop guard** | A limit you write into a hook script so it cannot make the agent repeat forever. | [20](20-hooks/README.md) |
| **Main agent** | The agent you are chatting with. It starts the helpers and merges their answers. | [15](15-parallel-helpers/README.md) |
| **Markdown** | Plain text with a few marks for layout: `#` for a heading, `-` for a bullet. Files end in `.md`. | [6](06-prompts-and-steering/README.md) |
| **Matcher** | A filter that decides which calls or messages a hook runs for. Empty means all of them. | [20](20-hooks/README.md) |
| **Mate** | A named helper you keep, with its own memory, workspace folder and standing chat. A Feature Preview. | [19](19-mates-and-agents/README.md) |
| **MCP** | Model Context Protocol: a shared way to plug outside tools into an agent. | [10](10-connections/README.md) |
| **MCP server** | A small program, or a web address, that offers tools to the agent. | [10](10-connections/README.md) |
| **Member ID** | Slack's ID for you, such as `U0123ABC456`. Kiro Crew answers only this person. | [14](14-phone-and-chat-apps/README.md) |
| **Memory** | What Kiro Crew keeps about you between chats: preferences, projects, a daily history and lessons. | [4](04-memory/README.md) |
| **Memory mode** | How one chat uses memory: **Persistent**, **Incognito** or **Temporary**. | [4](04-memory/README.md) |
| **Memory store** | The place a mate keeps what it learned. Each mate gets its own. | [19](19-mates-and-agents/README.md) |
| **`memory_recall`** | The tool the agent uses to look up a fact from past chats. | [4](04-memory/README.md) |
| **Model** | The program that reads your words and writes words back. | [0](00-what-is-an-agent/README.md) |
| **Monitor** | Something that keeps checking for a change for you. | [13](13-monitors/README.md) |
| **Monitor loop** | A chat that wakes itself on a timer, checks something, and goes back to sleep. | [13](13-monitors/README.md) |
| **Mute** | Stop one chat from making sounds and unread badges. | [3](03-sessions/README.md) |
| **`$name`** | Type `$` and a skill's name in the dashboard message box to load that skill, such as `$trip-packing`. | [7](07-skills/README.md) |
| **`@name`** | Type `@` and a saved prompt's name in the dashboard message box to insert it, such as `@weekly-notes`. | [6](06-prompts-and-steering/README.md) |
| **Notification** | A short alert in the bell, and optionally a banner and a sound. | [13](13-monitors/README.md) |
| **npx** | A command that comes with Node.js. It downloads a JavaScript program and runs it. | [10](10-connections/README.md) |
| **OAuth** | A sign-in where you approve access in your browser, instead of pasting a password. | [10](10-connections/README.md) |
| **Older Sessions** | The list of closed chats at the bottom of the sidebar. A closed chat is saved there, not deleted. | [3](03-sessions/README.md) |
| **One-time job** | A scheduled job that runs once at a set time, then deletes itself. | [12](12-scheduled-jobs/README.md) |
| **Open item** | A to-do line that is not done yet. It starts with `- [ ]`. | [Capstone](capstone-morning-desk/README.md) |
| **Page read** | Fetching a page's text without clicking anything. Fast, but it cannot fill in a form. | [11](11-browser/README.md) |
| **Pattern** | A short rule that matches text, written as a regular expression. | [9](09-protect-secrets-and-files/README.md) |
| **Persistent** | The normal memory mode. The chat uses memory and can save new memory. | [4](04-memory/README.md) |
| **Pin (chat)** | Keep a chat at the top of the sidebar. | [3](03-sessions/README.md) |
| **Pin (app)** | Show an enabled app's page in the sidebar. | [22](22-apps/README.md) |
| **Plan** | The list of steps the task runner makes from your task file, before any work starts. | [16](16-task-runner/README.md) |
| **Port** | The number in the dashboard address, such as `5476`. `KIROCREW_PORT` changes it. | [23](23-backup-and-hosting/README.md) |
| **POST** | The kind of web request that sends data. `curl -X POST` makes one. | [21](21-webhooks/README.md) |
| **`PostToolUse`** | The hook event after the agent used a tool. | [20](20-hooks/README.md) |
| **Probe** | A quick test that starts an MCP server and asks it to list its tools. | [10](10-connections/README.md) |
| **Process Sandbox** | A fence the operating system puts around the programs the agent runs. It hides credential folders. | [9](09-protect-secrets-and-files/README.md) |
| **Project folder** | The folder on your computer a chat works in, such as `~/my-project`. | [6](06-prompts-and-steering/README.md) |
| **Project skill** | A skill saved inside one project, in `<project>/.kiro/skills/`. It loads only after you trust the project. | [7](07-skills/README.md) |
| **Prompt** | The message you type to the agent. | [0](00-what-is-an-agent/README.md) |
| **Pull request** | A proposed change to code on a site such as GitHub, waiting for review. | [13](13-monitors/README.md) |
| **Queue** | Send a message that waits until the current turn is done. | [3](03-sessions/README.md) |
| **Rail** | The column of icons and names down the side of the dashboard. | [1](01-getting-started/README.md) |
| **Re-run from a step** | Start a new workflow run that reuses earlier steps' results and redoes only the later steps. | [17](17-workflows/README.md) |
| **Read-only** | An action that only looks, like listing files. It changes nothing. | [2](02-approval-modes/README.md) |
| **Regenerate** | Ask for a new answer to the same message. | [5](05-fix-a-mistake/README.md) |
| **Registry** | An online list of skills other people shared. | [7](07-skills/README.md) |
| **Remote server** | An MCP server on the internet. Its entry has a `url`. | [10](10-connections/README.md) |
| **Repository** | A folder that git watches. People often say "repo". | [5](05-fix-a-mistake/README.md) |
| **Request signing** | An extra check where a webhook caller also signs each request with a second secret. | [21](21-webhooks/README.md) |
| **Restore** | Put a file or folder back the way it was in the last git commit. For a snapshot: unpack it into a Kiro Crew data folder. | [9](09-protect-secrets-and-files/README.md), [23](23-backup-and-hosting/README.md) |
| **Revert** | Make an older artifact version the live one again. Kiro Crew records it as a new version. | [18](18-artifacts/README.md) |
| **Review-ready** | A pull request whose checks and reviews say it can move on. | [13](13-monitors/README.md) |
| **Rewind** | Go back to an earlier point in the chat, with **Edit & Resend**. Files are not undone. | [5](05-fix-a-mistake/README.md) |
| **Run** | One go at a task or a workflow, from the first step to the last. A workflow run has a run id. | [16](16-task-runner/README.md) |
| **Run history** | The list of times a scheduled job ran, and whether each run worked. | [12](12-scheduled-jobs/README.md) |
| **Saved prompt** | A prompt kept in a file with a name, so you can send it again with `@name`. | [6](06-prompts-and-steering/README.md) |
| **Scaffold** | A starter folder a command writes for you, with the right files in place. | [22](22-apps/README.md) |
| **Scheduled job** | A message Kiro Crew sends to the agent by itself, at a time you choose. | [12](12-scheduled-jobs/README.md) |
| **Script** | A small program saved in a file, which a skill can tell the agent to run. | [7](07-skills/README.md) |
| **Secret** | A password, token or key. Anyone who has it can act as you. | [9](09-protect-secrets-and-files/README.md) |
| **Secrets Vault** | Kiro Crew's locked store for secrets. The agent never sees the values. | [9](09-protect-secrets-and-files/README.md) |
| **Service** | A program your computer starts by itself when it boots. | [16](16-task-runner/README.md) |
| **Session** | One chat with the agent. It remembers what was said earlier in the same chat. | [1](01-getting-started/README.md) |
| **Session ledger** | A small saved record of a long chat's goal and next step. | [16](16-task-runner/README.md) |
| **Sessions sidebar** | The list of chats on the left side of the dashboard. | [3](03-sessions/README.md) |
| **Shell command** | A command the agent runs in a terminal behind the scenes, such as `ls`. | [2](02-approval-modes/README.md) |
| **Side Chat** | A small extra chat beside the main one, for quick questions. It does not change files. | [3](03-sessions/README.md) |
| **Side panel** | The area to the right of a chat, with tabs such as **Git**, **Terminal** and **Browser**. | [11](11-browser/README.md) |
| **Skill** | A folder with a `SKILL.md` file of steps for one kind of task. | [7](07-skills/README.md) |
| **`SKILL.md`** | The main file of a skill: front matter, then the steps. | [7](07-skills/README.md) |
| **`skill_search`** | The tool the agent uses to search your installed skills. | [7](07-skills/README.md) |
| **Slack app** | Your own small program inside Slack. Kiro Crew speaks through it. | [14](14-phone-and-chat-apps/README.md) |
| **Slack manifest** | A short settings file that tells Slack what your app needs. Kiro Crew writes it for you. | [14](14-phone-and-chat-apps/README.md) |
| **Slack workspace** | One Slack group, with its own members and channels. | [14](14-phone-and-chat-apps/README.md) |
| **Slug** | The short, fixed name of an artifact, such as `step-count-chart`. | [18](18-artifacts/README.md) |
| **Snapshot** | One `.tar.gz` file that holds a copy of your Kiro Crew data. It holds every secret, so guard it. | [23](23-backup-and-hosting/README.md) |
| **Socket Mode** | A way for a Slack app to connect out from your computer, with no public web address. | [14](14-phone-and-chat-apps/README.md) |
| **Source (Knowledge)** | One thing you added to the Knowledge Library: a folder, a file or a web page. | [8](08-knowledge-library/README.md) |
| **Source (webhook)** | One outside caller you set up on the Webhooks page, with its own token and agent. | [21](21-webhooks/README.md) |
| **Standard input (stdin)** | The text a program reads when it starts. Kiro Crew sends each hook a JSON description this way. | [20](20-hooks/README.md) |
| **Standard output (stdout)** | The text a program prints. Some hook events read it. | [20](20-hooks/README.md) |
| **Standing chat** | The one chat you have with a mate. It is the same chat every time. | [19](19-mates-and-agents/README.md) |
| **Star** | Marks an artifact as one you want to keep. | [18](18-artifacts/README.md) |
| **Steer** | Send a message into a turn that is still running, so the agent reads it as soon as it can. | [3](03-sessions/README.md) |
| **Steering file** | A markdown file of standing rules. The agent reads it at the start of every chat. | [6](06-prompts-and-steering/README.md) |
| **Step** | One part of a workflow, such as "read the notes". Also called a *phase*. | [17](17-workflows/README.md) |
| **`Stop`** | The hook event at the end of each agent turn. | [20](20-hooks/README.md) |
| **Subagent** | Kiro Crew's docs' word for a helper. | [15](15-parallel-helpers/README.md) |
| **Sync** | Read a Knowledge source again, so the library sees new or changed files. | [8](08-knowledge-library/README.md) |
| **Tailscale** | A service that joins your own devices into a private network, called a *tailnet*. | [14](14-phone-and-chat-apps/README.md) |
| **Take over** | Use your own mouse and keyboard in the Browser panel for a step, while the agent waits. | [11](11-browser/README.md) |
| **Task file** | A text or markdown file that describes the work, often called `TASK.md`. Also called a *spec*. | [16](16-task-runner/README.md) |
| **Task runner** | The part of Kiro Crew that reads a task file, splits it into steps, and does them one at a time. | [16](16-task-runner/README.md) |
| **Temporary** | A memory mode: the chat starts blank. It reads no memory and saves nothing new. | [4](04-memory/README.md) |
| **Terminal** | A window where you type commands instead of clicking. | [1](01-getting-started/README.md) |
| **Terminal panel** | A tab in the chat's side panel where you can type commands, such as git commands. | [5](05-fix-a-mistake/README.md) |
| **Third-party app** | Any app that did not ship with Kiro Crew, including one you wrote. It is blocked until you trust it. | [22](22-apps/README.md) |
| **Thread** | Replies grouped under one message in Slack. One thread is one chat with the agent. | [14](14-phone-and-chat-apps/README.md) |
| **Time zone** | The place whose clock a job uses, written like `Europe/London`. | [12](12-scheduled-jobs/README.md) |
| **Timeout** | The longest a run may take before it is stopped. | [17](17-workflows/README.md) |
| **Token** | A long secret string that proves who you are to a service. Treat it like a password. | [14](14-phone-and-chat-apps/README.md) |
| **Tool** | One action the agent can take, such as "read a file" or "save a lesson". You ask in plain words; the agent picks the tool. | [0](00-what-is-an-agent/README.md) |
| **Tool call** | The moment the agent uses a tool. It is the agent *doing* something, not just talking. | [0](00-what-is-an-agent/README.md) |
| **Transcript** | The full record of what a helper did and said. | [15](15-parallel-helpers/README.md) |
| **Trigger** | Run a scheduled job once, right now, whatever its schedule says. | [12](12-scheduled-jobs/README.md) |
| **Turn** | One round of work: your message and the agent's reply. | [3](03-sessions/README.md) |
| **Unattended** | Running with nobody watching or clicking buttons. | [16](16-task-runner/README.md) |
| **Version** | A saved state of an artifact. Every edit adds a new version. | [18](18-artifacts/README.md) |
| **Webhook** | A web address another program sends a message to. Here, the message starts one agent turn. | [21](21-webhooks/README.md) |
| **Widget** | A small interactive picture the agent draws inside a chat message. Every widget is saved as an artifact. | [18](18-artifacts/README.md) |
| **Workflow** | A job in steps that runs in the background. You can watch it and re-run part of it. | [17](17-workflows/README.md) |
| **Workspace (project)** | Applies only in one project folder. The dashboard also calls it **This project** for prompts. | [6](06-prompts-and-steering/README.md) |

---
**Last updated:** 2026-10-30
**Checked against:** Kiro Crew public source @ 2808e9478c (github.com/kirodotdev/KiroCrew) and kiro.dev/docs/cli
*Part of the [Kiro Crew How To](README.md) guide.*
