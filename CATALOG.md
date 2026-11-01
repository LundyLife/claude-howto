<picture>
  <source media="(prefers-color-scheme: dark)" srcset="resources/logos/kirocrew-howto-logo-dark.svg">
  <img alt="Kiro Crew How To" src="resources/logos/kirocrew-howto-logo.svg">
</picture>

# Feature catalog

Every Kiro Crew feature this guide teaches, what it is for, where you use it,
and the module that teaches it. For the exact commands and labels, see the
[quick reference](QUICK_REFERENCE.md). For Claude Code names, see
[Coming from Claude Code?](COMING_FROM_CLAUDE_CODE.md).

**Surface** labels:

- **Dashboard**: the Kiro Crew desktop app window, including plain-words
  requests you type in its message box.
- **kiro-cli (terminal)**: typed in a terminal: the `kirocrew` command,
  `kiro-cli`, or a plain shell command.
- **both**: works in both.

`kirocrew` and `kiro-cli` are two different programs.

## Table of contents

- [Getting started](#getting-started)
- [Chats and memory](#chats-and-memory)
- [Undo](#undo)
- [Rules, prompts, skills and documents](#rules-prompts-skills-and-documents)
- [Safety](#safety)
- [Tools and websites](#tools-and-websites)
- [Working without you](#working-without-you)
- [Bigger jobs](#bigger-jobs)
- [Building on top](#building-on-top)
- [Not taught in this guide](#not-taught-in-this-guide)

---

## Getting started

| Feature | What it is for | Surface | Module |
|---|---|---|---|
| Desktop app and **Set up Kiro** page | Install, install kiro-cli, sign in | Dashboard | [1](01-getting-started/README.md) |
| Rail: **Sessions**, **Schedule**, **Artifacts**, **Customize**, **Settings** | Find your way around | Dashboard | [1](01-getting-started/README.md) |
| Asking Kiro Crew about itself | Get a click path for any setting | Dashboard | [1](01-getting-started/README.md) |
| Change cards and **Undo** | Change a setting from the chat, then put it back | Dashboard | [1](01-getting-started/README.md) |
| `/onboarding` | Replay the welcome tour | Dashboard | [1](01-getting-started/README.md) |
| `kirocrew gateway`, `status`, `doctor`, `setup` | Run and check Kiro Crew without the desktop app | kiro-cli (terminal) | [1](01-getting-started/README.md) |
| Approval pill: **Normal**, **Reads**, **Trust**, **YOLO** | Choose how often the agent asks first | Dashboard | [2](02-approval-modes/README.md) |
| How long auto-approve stays on | Limit how long Trust and YOLO last | Dashboard | [2](02-approval-modes/README.md) |

## Chats and memory

| Feature | What it is for | Surface | Module |
|---|---|---|---|
| Sessions sidebar, rename, **Pin**, folders | Keep work apart | Dashboard | [3](03-sessions/README.md) |
| **Older Sessions** | Find and reopen a closed chat | Dashboard | [3](03-sessions/README.md) |
| **Side Chat** (`/side`) | Ask a quick question without stopping the main chat | Dashboard | [3](03-sessions/README.md) |
| **Steer** and **Queue** | Correct a running turn, or wait for it | Dashboard | [3](03-sessions/README.md) |
| Searching old chats | "What did we talk about earlier?" | Dashboard | [3](03-sessions/README.md) |
| Lessons ("Remember: ...") | Keep a preference across chats | Dashboard | [4](04-memory/README.md) |
| Automatic memory and `memory_recall` | Kiro Crew learns facts from your chats | Dashboard | [4](04-memory/README.md) |
| Memory modes: **Persistent**, **Incognito**, **Temporary** | Keep one chat private | Dashboard | [4](04-memory/README.md) |
| `kirocrew learn list`, `kirocrew memory search` | See lessons and memory from a terminal | kiro-cli (terminal) | [4](04-memory/README.md) |

## Undo

| Feature | What it is for | Surface | Module |
|---|---|---|---|
| **Edit & Resend**, Regenerate, **Fork** | Fix the chat | Dashboard | [5](05-fix-a-mistake/README.md) |
| **Git** tab and **Terminal** panel | See and undo file changes | Dashboard | [5](05-fix-a-mistake/README.md) |
| Artifact versions and **Revert** | Undo an edit to a saved chart or page | both | [18](18-artifacts/README.md) |
| `kirocrew snapshot` and `kirocrew restore` | Back up or move the whole setup | kiro-cli (terminal) | [23](23-backup-and-hosting/README.md) |

## Rules, prompts, skills and documents

| Feature | What it is for | Surface | Module |
|---|---|---|---|
| Saved prompts (`@name`, **Send to…**) | Stop retyping a request | Dashboard | [6](06-prompts-and-steering/README.md) |
| Steering files | Standing rules in every chat | both | [6](06-prompts-and-steering/README.md) |
| Folder **Additional steering** | Rules for one sidebar folder | Dashboard | [6](06-prompts-and-steering/README.md) |
| Skills (`$name`) | Teach a set of steps once | Dashboard | [7](07-skills/README.md) |
| Project-skill trust | Load a project's own skills safely | Dashboard | [7](07-skills/README.md) |
| **Add Skill** and **Auto-generate skills from sessions** | Bring in shared skills, or draft new ones to approve | Dashboard | [7](07-skills/README.md) |
| Knowledge Library and `/kb` | Search your own files, with sources | Dashboard | [8](08-knowledge-library/README.md) |
| `kirocrew knowledge stats` | Count what the library holds | kiro-cli (terminal) | [8](08-knowledge-library/README.md) |

## Safety

| Feature | What it is for | Surface | Module |
|---|---|---|---|
| Secrets Vault | Keep secret values away from the agent | Dashboard | [9](09-protect-secrets-and-files/README.md) |
| Process Sandbox (`agent.sandbox`) | Hide credential folders from the programs the agent runs | both | [9](09-protect-secrets-and-files/README.md) |
| Git commits | Get your files back after a mistake | both | [9](09-protect-secrets-and-files/README.md) |
| Denied Commands | A speed bump on one command line; not a security boundary | Dashboard | [9](09-protect-secrets-and-files/README.md) |

## Tools and websites

| Feature | What it is for | Surface | Module |
|---|---|---|---|
| Connections: **Services** and **MCP Servers** tabs | Plug outside tools into the agent | Dashboard | [10](10-connections/README.md) |
| `~/.kiro/settings/mcp.json` | Your own MCP servers, in a file | both | [10](10-connections/README.md) |
| Health badges | See whether a connection works | Dashboard | [10](10-connections/README.md) |
| Browser panel and take over | Let the agent use a website while you watch | Dashboard | [11](11-browser/README.md) |
| Computer use (off by default) | Let the agent drive desktop apps | Dashboard | [11](11-browser/README.md) |

## Working without you

| Feature | What it is for | Surface | Module |
|---|---|---|---|
| Scheduled jobs and the **Schedule** page | Run a request at set times | both | [12](12-scheduled-jobs/README.md) |
| One-time reminders | Run once, then delete itself | Dashboard | [12](12-scheduled-jobs/README.md) |
| Prevent sleep while running | Keep a long run from being cut off | Dashboard | [12](12-scheduled-jobs/README.md) |
| `monitor_watch` | Watch a pull request with no agent turns until it changes | Dashboard | [13](13-monitors/README.md) |
| `monitor_start` and the 🎯 goal control | Re-check anything on a timer | Dashboard | [13](13-monitors/README.md) |
| Bell and **Notifications** settings | Get told when something happens | Dashboard | [13](13-monitors/README.md) |
| **Messaging Channels** (Slack in full) | Chat and approve from your phone | both | [14](14-phone-and-chat-apps/README.md) |
| **Connect your phone** and `kirocrew tailnet` | Open the whole dashboard on your phone | both | [14](14-phone-and-chat-apps/README.md) |
| `send_message` | The agent messages you first | Dashboard | [14](14-phone-and-chat-apps/README.md) |

## Bigger jobs

| Feature | What it is for | Surface | Module |
|---|---|---|---|
| Parallel helpers and the **Subagents** panel | Do independent tasks at the same time | Dashboard | [15](15-parallel-helpers/README.md) |
| `kirocrew spawn run`, `kirocrew spawn list` | Start and list helpers from a terminal | kiro-cli (terminal) | [15](15-parallel-helpers/README.md) |
| **Task Runner** page and `kirocrew run` | Work through a task file while you are away | both | [16](16-task-runner/README.md) |
| `hooks.auto_approve_tools` | Allow tools ahead of time for a terminal run | kiro-cli (terminal) | [16](16-task-runner/README.md) |
| `kirocrew service install` | Keep Kiro Crew running after a restart | kiro-cli (terminal) | [16](16-task-runner/README.md) |
| Session ledger | Answer "where are we?" in a long chat | Dashboard | [16](16-task-runner/README.md) |
| Workflows and re-run from a step | Redo only the step that failed | both | [17](17-workflows/README.md) |
| Artifacts, stars and versions | Keep and improve what the agent made | both | [18](18-artifacts/README.md) |
| Mates (Feature Preview), goals and check-ins | A named helper with its own memory | Dashboard | [19](19-mates-and-agents/README.md) |
| Custom agents and `/agent` | A named style and tool list for a chat | Dashboard | [19](19-mates-and-agents/README.md) |

## Building on top

<!-- NLT: confirm the stop_hook_active guard allows exactly one extra turn on a release build -->
| Feature | What it is for | Surface | Module |
|---|---|---|---|
| `Stop` hooks guarded by `stop_hook_active` | Ask the agent to check its work once | Dashboard | [20](20-hooks/README.md) |
| `PostToolUse` hooks with an empty matcher | Log every tool call | Dashboard | [20](20-hooks/README.md) |
| Webhooks (Feature Preview) and `/api/hooks/agent` | Let another program start a job | both | [21](21-webhooks/README.md) |
| Apps: **Discover**, **Library**, `kirocrew app` | Package pages, skills and jobs | both | [22](22-apps/README.md) |
| Second instance (`KIROCREW_HOME`, `KIROCREW_PORT`) | Run a separate copy | kiro-cli (terminal) | [23](23-backup-and-hosting/README.md) |
| Remote Crew and containers | Run Kiro Crew on another machine | both | [23](23-backup-and-hosting/README.md) |

## Not taught in this guide

<!-- NLT: confirm whether PreToolUse hooks ever fire on the default engine -->
| Feature | Why |
|---|---|
| `PreToolUse` hooks that block a tool | A tool hook may not run when the engine already approved the call, and it sees only the call's title. Use the [Module 9](09-protect-secrets-and-files/README.md) layers instead |
| Hook matchers on a tool name, and reading `tool_input` | Same reason. [Module 20](20-hooks/README.md) explains it |
| Artifact deploy | The agent side only previews a deploy |

---
**Last updated:** 2026-10-30
**Checked against:** Kiro Crew public source @ 2808e9478c (github.com/kirodotdev/KiroCrew) and kiro.dev/docs/cli
*Part of the [Kiro Crew How To](README.md) guide.*
