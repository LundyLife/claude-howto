<picture>
  <source media="(prefers-color-scheme: dark)" srcset="resources/logos/kirocrew-howto-logo-dark.svg">
  <img alt="Kiro Crew How To" src="resources/logos/kirocrew-howto-logo.svg">
</picture>

# Quick reference

One page of the commands, labels and file locations the modules use, grouped by
module. Each module explains them in full.

**Surface** says where each one works:

- **Dashboard**: the Kiro Crew desktop app window. That includes plain-words
  requests you type in its message box, which the agent turns into a tool call.
- **kiro-cli (terminal)**: typed in a terminal: the `kirocrew` command,
  `kiro-cli`, or a plain shell command.
- **both**: works in both.

`kirocrew` and `kiro-cli` are two different programs.

Replace anything in angle brackets, such as `<job-id>`, with your own value.

## Table of contents

- [Where things live](#where-things-live)
- [Novice (Modules 0-5)](#novice-modules-0-5)
- [Intermediate (Modules 6-14)](#intermediate-modules-6-14)
- [Advanced (Modules 15-19)](#advanced-modules-15-19)
- [Expert (Modules 20-23)](#expert-modules-20-23)

---

## Where things live

| What | Where | Surface | Module |
|---|---|---|---|
| Kiro Crew's data | `~/.kiro/crew` (change it with `KIROCREW_HOME`) | both | [23](23-backup-and-hosting/README.md) |
| Dashboard address | `http://localhost:5476` (change the port with `KIROCREW_PORT`) | Dashboard | [1](01-getting-started/README.md) |
| Global saved prompts | `~/.kiro/prompts` | both | [6](06-prompts-and-steering/README.md) |
| Project saved prompts | `<project>/.kiro/prompts` | both | [6](06-prompts-and-steering/README.md) |
| Global steering files | `~/.kiro/steering/*.md` | both | [6](06-prompts-and-steering/README.md) |
| Project steering files | `<project>/.kiro/steering/*.md` | both | [6](06-prompts-and-steering/README.md) |
| Your skills | `~/.kiro/crew/skills/<name>/SKILL.md` | both | [7](07-skills/README.md) |
| Project skills | `<project>/.kiro/skills/<name>/` (need your trust) | both | [7](07-skills/README.md) |
| Connections (MCP servers) | `~/.kiro/settings/mcp.json` | both | [10](10-connections/README.md) |
| Custom agents | `~/.kiro/agents/<name>.json` | both | [19](19-mates-and-agents/README.md) |

## Novice (Modules 0-5)

### 1. Get it running

| Command or label | Surface | What it does |
|---|---|---|
| **Set up Kiro** page → **Check again** | Dashboard | Checks again for kiro-cli and your sign-in |
| `curl -fsSL https://cli.kiro.dev/install \| bash` | kiro-cli (terminal) | Installs kiro-cli on macOS or Linux |
| `kiro-cli login` | kiro-cli (terminal) | Signs you in |
| `/onboarding` | Dashboard | Replays the welcome tour |
| `kirocrew gateway` | kiro-cli (terminal) | Starts Kiro Crew without the desktop app |
| `kirocrew status` | kiro-cli (terminal) | Shows whether Kiro Crew is running |
| `kirocrew doctor` | kiro-cli (terminal) | Checks your install and prints fix hints |

### 2. How often it asks first

| Label | Surface | What it does |
|---|---|---|
| Approval pill: **Normal** | Dashboard | Meant to check with you before anything. Start here |
| Approval pill: **Reads** | Dashboard | Meant to run read-only shell commands on its own and ask for the rest |
| Approval pill: **Trust** | Dashboard | Meant to work without asking in this chat |
| Approval pill: **YOLO** | Dashboard | Meant to work without asking in every chat |
| **Approve** / **Reject** | Dashboard | Runs or skips the action on an approval card |
| **Settings → Security → How long auto-approve stays on** | Dashboard | How long auto-approve lasts (default 6 hours) |
| **Stop generation** | Dashboard | Stops the agent mid-task |

### 3. Tidy chats

| Command or label | Surface | What it does |
|---|---|---|
| **Older Sessions** | Dashboard | Lists closed chats; click one to reopen it |
| **Fork** | Dashboard | Copies a chat so you can try another path |
| `/side <question>` (or `/btw`) | Dashboard | Asks a quick question in a Side Chat |
| **Steer** / **Queue** | Dashboard | Send into the running turn, or wait until it ends |
| "What did we talk about earlier about `<topic>`?" | Dashboard | The agent searches your old chats |

### 4. Remember me, or not

| Command or label | Surface | What it does |
|---|---|---|
| "Remember: always answer me in bullet points." | Dashboard | Saves a lesson (`learn_add`) |
| **Settings → Overview → Memory** | Dashboard | See and delete lessons |
| Memory chip: **Persistent**, **Incognito**, **Temporary** | Dashboard | How this chat uses memory |
| **Settings → Chat → Default Memory Mode** | Dashboard | The mode new chats start in |
| `kirocrew learn list` | kiro-cli (terminal) | Lists your lessons |
| `kirocrew memory search "<words>"` | kiro-cli (terminal) | Searches memory |

### 5. Fix a mistake

| Command or label | Surface | What it does |
|---|---|---|
| **More actions → Edit & Resend** | Dashboard | Rewinds the chat. Files stay changed |
| Regenerate | Dashboard | Gives another answer to the same message |
| Side panel **Git** tab | Dashboard | Shows which files changed since the last commit |
| `git restore <file>` | both (**Terminal** panel or a terminal) | Puts a file back as it was in the last commit |

> **Remember:** rewind fixes the chat. Git fixes the files.

## Intermediate (Modules 6-14)

### 6. Rules and prompts

| Command or label | Surface | What it does |
|---|---|---|
| **Customize → Prompts** | Dashboard | Save and edit prompts |
| `@weekly-notes` | Dashboard | Inserts a saved prompt |
| **Send to…** | Dashboard | Sends a saved prompt to a chat |
| **Customize → Steering** | Dashboard | Lists your steering files |
| `inclusion: always` | both | Front matter that makes a steering file load in every chat |
| Folder → **Folder settings** → **Additional steering** | Dashboard | Steering for chats in one sidebar folder |

### 7. Skills

| Command or label | Surface | What it does |
|---|---|---|
| `$trip-packing` | Dashboard | Loads a skill on purpose |
| **Customize → Skills** | Dashboard | Lists your skills |
| `cp -R <skill-folder> ~/.kiro/crew/skills/` | kiro-cli (terminal) | Installs a skill by copying its folder |
| **Trust this project's skills?** → **Trust this folder** | Dashboard | Lets a project's own skills load |

### 8. Your documents

| Command or label | Surface | What it does |
|---|---|---|
| **Customize → Knowledge → Sources** | Dashboard | Add a folder; **Sync** reads it again |
| "Check my knowledge library: `<question>`" | Dashboard | The agent searches it and names the file |
| `/kb <words>` | Dashboard | Search the library yourself |
| `kirocrew knowledge stats` | kiro-cli (terminal) | Counts what the library holds |

### 9. Protect secrets and files

| Command or label | Surface | What it does |
|---|---|---|
| **Settings → Secrets** | Dashboard | The Secrets Vault: the agent never sees the values |
| **Settings → Developer → Config → Config Summary** → **Sandbox** | Dashboard | Shows the sandbox setting: `auto`, `strict` or `off` |
| `kirocrew config get agent.sandbox` | kiro-cli (terminal) | Shows the sandbox setting |
| `kirocrew config set agent.sandbox strict` | kiro-cli (terminal) | Hides more credential folders; can break OAuth sign-ins. Applies to new chats only |
| `git -C ~/my-project restore keep-me` | kiro-cli (terminal) | Gets a deleted folder back from the last commit |
| **Settings → Security** → **Denied Commands** | Dashboard | A speed bump on one command line, not a wall. Not covered by an exercise |

### 10. Connect your tools

| Command or label | Surface | What it does |
|---|---|---|
| **Customize → Connections → Services** | Dashboard | One-click sign-in to ready-made services |
| **Customize → Connections → MCP Servers** | Dashboard | Add your own server |
| **Apply & Restart** | Dashboard | Loads new servers; open a **new** chat after |
| `kirocrew restart` | kiro-cli (terminal) | Restarts Kiro Crew |
| `${GITHUB_TOKEN}` in `mcp.json` | both | Points at a token instead of pasting it |

### 11. Use a website

| Command or label | Surface | What it does |
|---|---|---|
| Side panel **Browser** | Dashboard | Shows the agent driving a web page (desktop app only) |
| "Stop and let me take over" … "done" | Dashboard | You use the page yourself, then hand back |
| **Settings → Computer Use → Enable computer use** | Dashboard | Lets the agent drive desktop apps. Off by default |

### 12. Daily summary

| Command or label | Surface | What it does |
|---|---|---|
| "Every weekday at 8am, … Use the `<zone>` time zone." | Dashboard | Makes a scheduled job |
| "Trigger that job now." | Dashboard | Runs it once to test |
| Rail **Schedule** → **Pause**, **Resume**, **Run Now**, **Executions** | Dashboard | Manage every job |
| `kirocrew cron add <name> "<message>" --cron "<expr>" --timezone <zone>` | kiro-cli (terminal) | Makes a job from the terminal |
| `kirocrew cron list` | kiro-cli (terminal) | Lists every job and its id |
| `kirocrew cron trigger <job-id>` | kiro-cli (terminal) | Runs a job once, now |
| **Settings → Chat → Advanced → Prevent sleep while running** | Dashboard | Keeps sleep from cutting off a long run |

### 13. Tell me when it changes

| Command or label | Surface | What it does |
|---|---|---|
| "Check every 5 minutes whether `<file>` exists, up to 6 checks, and tell me when it does." | Dashboard | Starts a monitor loop (`monitor_start`) |
| "Watch this pull request: `<url>`" | Dashboard | Watches a pull request on a supported site (`monitor_watch`) |
| 🎯 goal control | Dashboard | Shows the loop's cycle and next check; can pause it |
| Top-bar bell, **Settings → Notifications** | Dashboard | Your alerts, and how they show |

### 14. Phone and chat apps

| Command or label | Surface | What it does |
|---|---|---|
| **Settings → Messaging Channels → Slack** | Dashboard | Stores your Slack tokens and member ID |
| `kirocrew manifest --url` | kiro-cli (terminal) | Makes the Slack app for you |
| `kirocrew setup --slack` | kiro-cli (terminal) | Stores the Slack settings from the terminal |
| Rail **Connect your phone** | Dashboard | Opens the whole dashboard on your phone |
| `kirocrew tailnet up` / `status` / `down` | kiro-cli (terminal) | Puts the dashboard on your own tailnet, or takes it off |

## Advanced (Modules 15-19)

### 15. Many tasks at once

| Command or label | Surface | What it does |
|---|---|---|
| "Use three helpers in parallel. …" | Dashboard | Starts helpers (`spawn_run`) |
| **Subagents** panel | Dashboard | Shows each helper |
| `kirocrew spawn run "<task>" --async` | kiro-cli (terminal) | Starts a helper and returns at once |
| `kirocrew spawn list` | kiro-cli (terminal) | Lists helpers |

### 16. Work while away

| Command or label | Surface | What it does |
|---|---|---|
| Rail **Task Runner** → **New Task** → **Plan** → **Run** | Dashboard | Turns a task file into a plan, then runs it |
| `kirocrew run TASK.md` | kiro-cli (terminal) | Runs a task file. Add `--fresh`, `--no-test` or `--timeout` |
| `kirocrew config get hooks.auto_approve_tools` | kiro-cli (terminal) | Shows the tools a terminal run may use |
| `kirocrew service install` | kiro-cli (terminal) | Keeps Kiro Crew running after a restart |

### 17. Restartable long jobs

| Command or label | Surface | What it does |
|---|---|---|
| "Use a workflow to …" | Dashboard | Starts a workflow (`workflow_run`) |
| "Re-run that workflow from step 3." | Dashboard | Reuses earlier steps (`workflow_rerun_subtree`) |
| **Customize → Workflows**, `/workflow`, `/workflow <name> [input]` | Dashboard | Lists and runs saved workflows |
| `kirocrew config set agent.workflow_run_timeout_secs 7200` | kiro-cli (terminal) | Raises the time limit (default 3600, at most 21600) |

### 18. Keep what it made

| Command or label | Surface | What it does |
|---|---|---|
| Rail **Artifacts**, star, **Version** list, **Revert** | Dashboard | Keep, compare and undo artifacts |
| `kirocrew artifact list` | kiro-cli (terminal) | Lists artifacts |
| `kirocrew artifact versions <slug>` | kiro-cli (terminal) | Lists an artifact's versions |
| `kirocrew artifact show <slug> --version 1 --meta` | kiro-cli (terminal) | Shows one version's details |

### 19. Named specialists

| Command or label | Surface | What it does |
|---|---|---|
| **Settings → Developer → Feature Previews → Mates** | Dashboard | Turns on the Mates preview (settings-page id `developer.mates`; the switch is the browser flag `mc-preview-crew`, not a `kirocrew config` key), per browser |
| Rail **Mates** → **New mate** | Dashboard | Makes a mate |
| Mate **Goals** tab | Dashboard | Goals and check-ins |
| **Customize → Custom agents** | Dashboard | Lists custom agents |
| `/agent <name>` | Dashboard | Uses a custom agent in a chat |

## Expert (Modules 20-23)

### 20. Hooks

<!-- NLT: confirm the stop_hook_active guard allows exactly one extra turn on a release build -->
| Command or label | Surface | What it does |
|---|---|---|
| **Customize → Hooks** (also `/hooks`), **Test** | Dashboard | Add, test, enable and delete hooks |
| `Stop` event | both | Runs at the end of each turn. `{"decision": "block", "reason": "…"}` asks for one more turn; guard it with `stop_hook_active` |
| `PostToolUse` event, empty matcher | both | Runs after each tool call; gets the call's title (`tool_name`) and `tool_response`, not `tool_input` |
| `agent.max_stop_hook_nudges` | both | Backstop: halts after 100 `Stop` extra turns in a row |
| `~/.kiro/crew/hooks.json` | both | Where hooks are stored |
| `chmod +x ~/my-hooks/*.sh` | kiro-cli (terminal) | Makes your hook scripts runnable |

> **Warning:** Do not use hooks as a safety lock. Use the layers in
> [Module 9](09-protect-secrets-and-files/README.md).

### 21. Webhooks

| Command or label | Surface | What it does |
|---|---|---|
| **Settings → Developer → Feature Previews → Webhooks** | Dashboard | Turns on the Webhooks page (settings-page id `developer.webhooks`; the switch is the browser flag `mc-preview-webhooks`, not a `kirocrew config` key), per browser |
| Webhooks page → **New** → **Generate token** | Dashboard | Makes a source and shows its token once |
| `POST http://127.0.0.1:5476/api/hooks/agent` with `Authorization: Bearer <token>` | kiro-cli (terminal) | Starts one agent turn; the answer lands in the bell |
| Webhooks **Activity** tab | Dashboard | Lists recent webhook runs |

### 22. Build an app

| Command or label | Surface | What it does |
|---|---|---|
| `kirocrew app init my-first-app --ui --cron` | kiro-cli (terminal) | Writes a starter app |
| `npm run build` | kiro-cli (terminal) | Builds the app's page (in its `ui/` folder) |
| `kirocrew app install <folder>` | kiro-cli (terminal) | Installs an app |
| `kirocrew app list` / `kirocrew app disable <name>` | kiro-cli (terminal) | Lists apps, or turns one off |
| Rail **Discover**, **Library** | Dashboard | Browse apps; enable, pin and unpin them |

### 23. Back up, move, host

| Command or label | Surface | What it does |
|---|---|---|
| `kirocrew snapshot ~/my-snapshots` | kiro-cli (terminal) | Packs your data into one file. It holds every secret |
| `kirocrew restore --list-components` | kiro-cli (terminal) | Lists the parts you can restore |
| `kirocrew restore <file> --components memory,crons` | kiro-cli (terminal) | Restores only those parts (add `--dry-run` to preview) |
| `KIROCREW_HOME=<folder> KIROCREW_PORT=<port> kirocrew gateway` | kiro-cli (terminal) | Runs a second, separate instance |
| `kirocrew update`, then `kirocrew restart` | kiro-cli (terminal) | Updates a terminal install |
| **Settings → Remote Crew** | Dashboard | Reach a Kiro Crew on another computer |

---
**Last updated:** 2026-10-30
**Checked against:** Kiro Crew public source @ 2808e9478c (github.com/kirodotdev/KiroCrew) and kiro.dev/docs/cli
*Part of the [Kiro Crew How To](README.md) guide.*
