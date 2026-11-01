<picture>
  <source media="(prefers-color-scheme: dark)" srcset="resources/logos/kirocrew-howto-logo-dark.svg">
  <img alt="Kiro Crew How To" src="resources/logos/kirocrew-howto-logo.svg">
</picture>

# Changelog

All notable changes to Kiro Crew How To. Dates are `YYYY-MM-DD`.

This project started as a fork of
[claude-howto](https://github.com/luongnv89/claude-howto). Its full history up to
the fork is in the [original project's changelog](https://github.com/luongnv89/claude-howto/blob/main/CHANGELOG.md).

## [Unreleased]

## [2.0.0] - 2026-10-30

A new, goal-first curriculum. Each module now starts from one thing a learner
wants to do, and teaches the best Kiro Crew tool for it.

### Added

- 24 modules (`00-` to `23-`) in four levels, plus a capstone:
  - 🟢 Novice: `00-what-is-an-agent`, `01-getting-started`,
    `02-approval-modes`, `03-sessions`, `04-memory`, `05-fix-a-mistake`.
  - 🔵 Intermediate: `06-prompts-and-steering`, `07-skills`,
    `08-knowledge-library`, `09-protect-secrets-and-files`, `10-connections`,
    `11-browser`, `12-scheduled-jobs`, `13-monitors`,
    `14-phone-and-chat-apps`.
  - 🟣 Advanced: `15-parallel-helpers`, `16-task-runner`, `17-workflows`,
    `18-artifacts`, `19-mates-and-agents`.
  - 🔴 Expert: `20-hooks`, `21-webhooks`, `22-apps`,
    `23-backup-and-hosting`.
  - `capstone-morning-desk`: a weekday briefing on your phone.
- A "Try it yourself" task in every module, separate from the guided demo.
- `COMING_FROM_CLAUDE_CODE.md`: each Claude Code idea mapped to the best Kiro
  Crew tool and module.
- Mates ([Module 19](19-mates-and-agents/README.md)) and Webhooks
  ([Module 21](21-webhooks/README.md)), taught as Feature Previews with the
  steps to switch them on.
- `<!-- NLT: ... -->` comments that mark claims still waiting for a live test
  on a release build.

### Changed

- Module 1 starts from the desktop app and its **Set up Kiro** page. The
  terminal install moved to an optional box.
- Safety is one module, [Module 9](09-protect-secrets-and-files/README.md),
  built on what each layer really guards. The deny list is taught as friction,
  not a fence.
- Hooks moved to the expert level ([Module 20](20-hooks/README.md)) and teach
  only `Stop`, `UserPromptSubmit` and `PostToolUse` with an empty matcher.
  Every `Stop` sample has a loop guard.
- "Undo" became [Module 5](05-fix-a-mistake/README.md), split by what went
  wrong: rewind fixes the chat, git fixes the files.
- Slash commands moved into saved prompts (Module 6) and skills (Module 7).
  Subagents moved into parallel helpers (Module 15) and mates (Module 19).
- Slack is taught in full in [Module 14](14-phone-and-chat-apps/README.md).
  Other chat apps get one line each.
- The lesson-quiz and self-assessment skills cover the new modules, use
  question cards in the dashboard, and are copied to `~/.kiro/crew/skills/`.
- The website roadmap (`scripts/website_templates/roadmap.json`), the site's
  chapter order and the local progress tracker use the new module list.
- `GLOSSARY.md`, `QUICK_REFERENCE.md`, `CATALOG.md`, `INDEX.md`,
  `LEARNING-ROADMAP.md` and `kirocrew_concepts_guide.md` were rewritten for
  the new modules.

### Removed

- The v1 module folders: `02-slash-commands`, `03-memory`, `04-skills`,
  `05-subagents`, `06-mcp`, `07-hooks`, `08-checkpoints`, `09-automation` and
  `10-advanced`. Their content moved into the new modules where it fit.
- The v1 hook samples `pre-tool-check.sh`, `pre-commit.sh`,
  `security-scan.sh`, `format-code.sh`, `log-shell.sh`, `dependency-check.sh`
  and `validate-prompt.sh`. Module 20 ships new samples built only on the
  hook shapes that work today. The idea behind `notify-team.sh` moved to
  Modules 13 and 14.
- The `devops-automation` sample app, `check_disk.py` and
  `planning-examples.md`.
- The ebook build. The guide ships as markdown and as a website.

## [1.0.0] - 2026-10-30

The conversion from a Claude Code tutorial to a Kiro Crew tutorial.

### Added

- A first module for readers with no AI experience, a glossary, a concepts
  guide and `AGENTS.md`.
- Fixed headings in every module README, and surface labels (Dashboard,
  kiro-cli (terminal), both) on every slash command and key.

### Changed

- Every module was rewritten for Kiro Crew and kiro-cli, in plain language.
- Plugins became Kiro Crew apps.
- The lesson-quiz and self-assessment skills moved to `.kiro/skills/`.
- New name and logo: kirocrew-howto, "Kiro Crew How To".
- The builds are English only.

### Removed

- The translated copies of the original tutorial.- The slides, the upstream maintainer's planning documents, the video prompt and
  the Claude Code screenshots.

---
**Last updated:** 2026-10-30
**Checked against:** Kiro Crew public source @ 2808e9478c (github.com/kirodotdev/KiroCrew) and kiro.dev/docs/cli
*Part of the [Kiro Crew How To](README.md) guide.*
