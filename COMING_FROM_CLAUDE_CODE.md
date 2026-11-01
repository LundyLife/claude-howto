<picture>
  <source media="(prefers-color-scheme: dark)" srcset="resources/logos/kirocrew-howto-logo-dark.svg">
  <img alt="Kiro Crew How To" src="resources/logos/kirocrew-howto-logo.svg">
</picture>

# Coming from Claude Code?

If you already use Claude Code, most of your habits carry over. The names and
the places change. This page maps each Claude Code idea to the Kiro Crew tool
that fits that goal best, and to the module that teaches it.

Some Claude Code ideas have no good match. Those are marked plainly, with what
to use instead.

## Table of contents

- [The short version](#the-short-version)
- [Idea by idea](#idea-by-idea)
- [Three things that work differently](#three-things-that-work-differently)
- [Where to start](#where-to-start)

---

## The short version

- You chat in the **dashboard**, the window of the Kiro Crew desktop app
  ([Module 1](01-getting-started/README.md)).
- Standing rules go in **steering files**. Small preferences become
  **lessons** when you say "Remember: ..." ([Modules 4](04-memory/README.md)
  and [6](06-prompts-and-steering/README.md)).
- You do not write subagent files. You ask for **parallel helpers** in plain
  words ([Module 15](15-parallel-helpers/README.md)).
  <!-- NLT: confirm whether PreToolUse hooks ever fire on the default engine -->
- Hooks cannot be your safety lock. Kiro Crew's safety comes from layers
  ([Module 9](09-protect-secrets-and-files/README.md)).

## Idea by idea

The left column is how the original claude-howto tutorial described Claude
Code. The surface column says where you use the Kiro Crew side: **Dashboard**,
**kiro-cli (terminal)** or **both**.

<!-- NLT: confirm whether PreToolUse hooks fire, and that the Stop hook block reply with the stop_hook_active guard allows exactly one extra turn on a release build -->
| Claude Code idea | Best Kiro Crew tool | Surface | Module |
|---|---|---|---|
| `CLAUDE.md` | Steering files (**Customize → Steering**), plus lessons from "Remember: ..." | Dashboard | [4](04-memory/README.md), [6](06-prompts-and-steering/README.md) |
| `~/.claude/CLAUDE.md` | Global steering files in `~/.kiro/steering/` | both | [6](06-prompts-and-steering/README.md) |
| Custom slash commands | Saved prompts, used with `@name` | Dashboard | [6](06-prompts-and-steering/README.md) |
| A slash command with several steps | A skill, used with `$name` | Dashboard | [7](07-skills/README.md) |
| Skills | Skills in `~/.kiro/crew/skills/<name>/SKILL.md` | both | [7](07-skills/README.md) |
| Subagent files | Ask "use three helpers in parallel"; the agent starts them | Dashboard | [15](15-parallel-helpers/README.md) |
| A standing specialist agent | A **mate** (Feature Preview), or a custom agent in `~/.kiro/agents/` | Dashboard | [19](19-mates-and-agents/README.md) |
| `claude mcp add` | **Customize → Connections**, or `~/.kiro/settings/mcp.json` | both | [10](10-connections/README.md) |
| Hooks that block tools | No direct match. Use the Process Sandbox, the Secrets Vault and git (git restore is the safety net) | Dashboard | [9](09-protect-secrets-and-files/README.md) |
| Hooks that run when a turn ends | A `Stop` hook on **Customize → Hooks** | Dashboard | [20](20-hooks/README.md) |
| Plugins | Apps (rail **Discover** and **Library**); `kirocrew app import` converts a plugin package | both | [22](22-apps/README.md) |
| Checkpoints and rewind | **Edit & Resend** for the chat, git for files, artifact versions, snapshots | both | [5](05-fix-a-mistake/README.md), [18](18-artifacts/README.md), [23](23-backup-and-hosting/README.md) |
| Permission modes | The approval pill: **Normal**, **Reads**, **Trust**, **YOLO** | Dashboard | [2](02-approval-modes/README.md) |
| Plan mode | Ask it to "plan first", or use the **Task Runner** page, which plans before it runs | Dashboard | [16](16-task-runner/README.md) |
| Background tasks | Parallel helpers, or the task runner | both | [15](15-parallel-helpers/README.md), [16](16-task-runner/README.md) |
| Scheduled tasks | Scheduled jobs on the **Schedule** page | both | [12](12-scheduled-jobs/README.md) |
| Monitoring | Monitors, shown by the 🎯 goal control | Dashboard | [13](13-monitors/README.md) |
| Headless `claude -p` | `kirocrew chat -m "<message>"` for one message; `kirocrew run TASK.md` for a task file | kiro-cli (terminal) | [16](16-task-runner/README.md) |
| Remote and web sessions | **Connect your phone**, Slack, or **Settings → Remote Crew** | Dashboard | [14](14-phone-and-chat-apps/README.md), [23](23-backup-and-hosting/README.md) |
| Output styles | **Settings → Chat → Response Verbosity** | Dashboard | [1](01-getting-started/README.md) |
| Status line | Partial: the dashboard shows context use per chat (**Context usage**) | Dashboard | — |

## Three things that work differently

### Hooks get no vote on tools

In the original tutorial, a `PreToolUse` hook could block a command. Do not
rely on that in Kiro Crew.

<!-- NLT: confirm whether PreToolUse hooks ever fire on the default engine -->
A tool hook sees the call's title, not a fixed tool name, and it may not run at
all when the engine already approved the call. [Module 20](20-hooks/README.md)
teaches the events that worked in testing: `Stop` and `PostToolUse` with an
empty matcher. [Module 9](09-protect-secrets-and-files/README.md)
teaches what really protects you.

### Memory learns by itself

You do not keep one big memory file up to date. Kiro Crew saves facts from your
chats in the background. You add a rule by saying "Remember: ...", and you see
and delete rules in **Settings → Overview → Memory**
([Module 4](04-memory/README.md)).

### Rewind does not undo files

**Edit & Resend** rewinds the chat. A file the agent changed stays changed.
Commit with git before big jobs, and use `git restore` to get a file back
([Module 5](05-fix-a-mistake/README.md)).

> **Remember:** rewind fixes the chat. Git fixes the files.

## Where to start

1. Skim [Module 1](01-getting-started/README.md) to install the desktop app.
2. Read [Module 2](02-approval-modes/README.md) and
   [Module 9](09-protect-secrets-and-files/README.md) before you hand the agent
   real work.
3. Jump to the modules in the table above that match what you used most.

> **Want Kiro Crew to drive Claude Code itself?** Kiro Crew can use other
> engines. This guide uses the default engine throughout, and every exercise is
> checked against it.

---
**Last updated:** 2026-10-30
**Checked against:** Kiro Crew public source @ 2808e9478c (github.com/kirodotdev/KiroCrew) and kiro.dev/docs/cli
*Part of the [Kiro Crew How To](README.md) guide.*
