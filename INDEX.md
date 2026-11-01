<picture>
  <source media="(prefers-color-scheme: dark)" srcset="resources/logos/kirocrew-howto-logo-dark.svg">
  <img alt="Kiro Crew How To" src="resources/logos/kirocrew-howto-logo.svg">
</picture>

# Index

Every file in Kiro Crew How To, grouped by folder. Start with the [README](README.md); learn the words in the [glossary](GLOSSARY.md).

## Table of contents

- [Top-level guides](#top-level-guides)
- [Module 0: What is an AI agent?](#module-0-what-is-an-ai-agent)
- [Module 1: Get it running and say hello](#module-1-get-it-running-and-say-hello)
- [Module 2: Decide how often it asks first](#module-2-decide-how-often-it-asks-first)
- [Module 3: Keep chats tidy and pick up where you left off](#module-3-keep-chats-tidy-and-pick-up-where-you-left-off)
- [Module 4: Make it remember you, or not](#module-4-make-it-remember-you-or-not)
- [Module 5: Fix a mistake](#module-5-fix-a-mistake)
- [Module 6: Standing rules and reusable prompts](#module-6-standing-rules-and-reusable-prompts)
- [Module 7: Teach it a procedure: skills](#module-7-teach-it-a-procedure-skills)
- [Module 8: Ask about your own documents](#module-8-ask-about-your-own-documents)
- [Module 9: Protect your secrets and your files](#module-9-protect-your-secrets-and-your-files)
- [Module 10: Connect your tools](#module-10-connect-your-tools)
- [Module 11: Let it use a website](#module-11-let-it-use-a-website)
- [Module 12: Get a daily summary](#module-12-get-a-daily-summary)
- [Module 13: Tell me when something changes](#module-13-tell-me-when-something-changes)
- [Module 14: Reach it from your phone or chat app](#module-14-reach-it-from-your-phone-or-chat-app)
- [Module 15: Many tasks at once](#module-15-many-tasks-at-once)
- [Module 16: Work while you're away](#module-16-work-while-youre-away)
- [Module 17: Long jobs that can restart from a step](#module-17-long-jobs-that-can-restart-from-a-step)
- [Module 18: Keep and improve what it made](#module-18-keep-and-improve-what-it-made)
- [Module 19: Named specialists with their own memory](#module-19-named-specialists-with-their-own-memory)
- [Module 20: Your own automatic checks: hooks](#module-20-your-own-automatic-checks-hooks)
- [Module 21: Let another program start a job](#module-21-let-another-program-start-a-job)
- [Module 22: Build a small app](#module-22-build-a-small-app)
- [Module 23: Back up, move, or host it](#module-23-back-up-move-or-host-it)
- [Capstone: My morning desk](#capstone-my-morning-desk)
- [Built-in skills](#built-in-skills)
- [Progress tracker](#progress-tracker)
- [Brand assets](#brand-assets)
- [Tooling](#tooling)

## Top-level guides

| File | What it is |
|---|---|
| [README.md](README.md) | Start here: who this is for, quick start, the modules |
| [LEARNING-ROADMAP.md](LEARNING-ROADMAP.md) | Levels, what each module needs first, checkpoints |
| [QUICK_REFERENCE.md](QUICK_REFERENCE.md) | One page of commands, labels and file locations |
| [GLOSSARY.md](GLOSSARY.md) | Every term, one line each |
| [COMING_FROM_CLAUDE_CODE.md](COMING_FROM_CLAUDE_CODE.md) | Claude Code ideas mapped to Kiro Crew tools |
| [kirocrew_concepts_guide.md](kirocrew_concepts_guide.md) | How the parts of Kiro Crew fit together |
| [CATALOG.md](CATALOG.md) | Every feature, its surface and module |
| [INDEX.md](INDEX.md) | This file |
| [resources.md](resources.md) | Official docs and further reading |
| [clean-code-rules.md](clean-code-rules.md) | Clean-code rules a reviewer skill or agent can use |
| [STYLE_GUIDE.md](STYLE_GUIDE.md) | How to write and format pages |
| [CONTRIBUTING.md](CONTRIBUTING.md) | How to contribute |
| [AGENTS.md](AGENTS.md) | Instructions for AI agents working in this repo |
| [CHANGELOG.md](CHANGELOG.md) | What changed |
| [SECURITY.md](SECURITY.md) | Security policy |
| [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) | Code of conduct |
| [LICENSE](LICENSE) | MIT License |

## Module 0: What is an AI agent?

| File | What it is |
|---|---|
| [00-what-is-an-agent/README.md](00-what-is-an-agent/README.md) | What is an AI agent? |
| [00-what-is-an-agent/sample-transcript.md](00-what-is-an-agent/sample-transcript.md) | Sample chat: spot the tool call and the guess |
| [00-what-is-an-agent/three-prompts-worksheet.md](00-what-is-an-agent/three-prompts-worksheet.md) | Three prompts worksheet |

## Module 1: Get it running and say hello

| File | What it is |
|---|---|
| [01-getting-started/README.md](01-getting-started/README.md) | Get it running and say hello |
| [01-getting-started/first-prompts.md](01-getting-started/first-prompts.md) | First prompts to try |

## Module 2: Decide how often it asks first

| File | What it is |
|---|---|
| [02-approval-modes/README.md](02-approval-modes/README.md) | Decide how often it asks first |

## Module 3: Keep chats tidy and pick up where you left off

| File | What it is |
|---|---|
| [03-sessions/README.md](03-sessions/README.md) | Keep chats tidy and pick up where you left off |

## Module 4: Make it remember you, or not

| File | What it is |
|---|---|
| [04-memory/README.md](04-memory/README.md) | Make it remember you, or not |
| [04-memory/remember-examples.md](04-memory/remember-examples.md) | Lines that make the agent remember you |

## Module 5: Fix a mistake

| File | What it is |
|---|---|
| [05-fix-a-mistake/README.md](05-fix-a-mistake/README.md) | Fix a mistake |
| [05-fix-a-mistake/fix-examples.md](05-fix-a-mistake/fix-examples.md) | Fix examples: one for each kind of mistake |

## Module 6: Standing rules and reusable prompts

| File | What it is |
|---|---|
| [06-prompts-and-steering/README.md](06-prompts-and-steering/README.md) | Standing rules and reusable prompts |
| [06-prompts-and-steering/prompts/doc-refactor.md](06-prompts-and-steering/prompts/doc-refactor.md) | Reorganize a project's documentation so it is easier to follow |
| [06-prompts-and-steering/prompts/generate-api-docs.md](06-prompts-and-steering/prompts/generate-api-docs.md) | Write API documentation from the source code |
| [06-prompts-and-steering/prompts/optimize.md](06-prompts-and-steering/prompts/optimize.md) | Review code for performance problems and suggest fixes |
| [06-prompts-and-steering/prompts/unit-test-expand.md](06-prompts-and-steering/prompts/unit-test-expand.md) | Add unit tests for code paths that have no tests yet |
| [06-prompts-and-steering/prompts/weekly-notes.md](06-prompts-and-steering/prompts/weekly-notes.md) | Summarize this week's notes into five bullets |
| [06-prompts-and-steering/steering/api.md](06-prompts-and-steering/steering/api.md) | API rules |
| [06-prompts-and-steering/steering/dates.md](06-prompts-and-steering/steering/dates.md) | Dates |
| [06-prompts-and-steering/steering/personal.md](06-prompts-and-steering/steering/personal.md) | My personal working rules |
| [06-prompts-and-steering/steering/project.md](06-prompts-and-steering/steering/project.md) | Project rules: Shop Demo |

## Module 7: Teach it a procedure: skills

| File | What it is |
|---|---|
| [07-skills/README.md](07-skills/README.md) | Teach it a procedure: skills |
| [07-skills/.gitignore](07-skills/.gitignore) | Git ignore rules |
| [07-skills/blog-draft/SKILL.md](07-skills/blog-draft/SKILL.md) | Skill `blog-draft` |
| [07-skills/blog-draft/templates/draft-template.md](07-skills/blog-draft/templates/draft-template.md) | [Blog Post Title] |
| [07-skills/blog-draft/templates/outline-template.md](07-skills/blog-draft/templates/outline-template.md) | Blog Post Outline: [Title] |
| [07-skills/brand-voice/SKILL.md](07-skills/brand-voice/SKILL.md) | Skill `brand-voice` |
| [07-skills/brand-voice/templates/email-template.txt](07-skills/brand-voice/templates/email-template.txt) | Text file |
| [07-skills/brand-voice/templates/social-post-template.txt](07-skills/brand-voice/templates/social-post-template.txt) | Text file |
| [07-skills/brand-voice/tone-examples.md](07-skills/brand-voice/tone-examples.md) | Brand Voice Tone Examples |
| [07-skills/code-review-specialist/SKILL.md](07-skills/code-review-specialist/SKILL.md) | Skill `code-review-specialist` |
| [07-skills/code-review-specialist/scripts/analyze-metrics.py](07-skills/code-review-specialist/scripts/analyze-metrics.py) | Python script |
| [07-skills/code-review-specialist/scripts/compare-complexity.py](07-skills/code-review-specialist/scripts/compare-complexity.py) | Python script |
| [07-skills/code-review-specialist/templates/finding-template.md](07-skills/code-review-specialist/templates/finding-template.md) | Code Review Finding Template |
| [07-skills/code-review-specialist/templates/review-checklist.md](07-skills/code-review-specialist/templates/review-checklist.md) | Code Review Checklist |
| [07-skills/commit/SKILL.md](07-skills/commit/SKILL.md) | Skill `commit` |
| [07-skills/doc-generator/SKILL.md](07-skills/doc-generator/SKILL.md) | Skill `doc-generator` |
| [07-skills/doc-generator/generate-docs.py](07-skills/doc-generator/generate-docs.py) | Python script |
| [07-skills/pr/SKILL.md](07-skills/pr/SKILL.md) | Skill `pr` |
| [07-skills/refactor/SKILL.md](07-skills/refactor/SKILL.md) | Skill `refactor` |
| [07-skills/refactor/references/code-smells.md](07-skills/refactor/references/code-smells.md) | Code Smells Catalog |
| [07-skills/refactor/references/refactoring-catalog.md](07-skills/refactor/references/refactoring-catalog.md) | Refactoring Catalog |
| [07-skills/refactor/scripts/analyze-complexity.py](07-skills/refactor/scripts/analyze-complexity.py) | Python script |
| [07-skills/refactor/scripts/detect-smells.py](07-skills/refactor/scripts/detect-smells.py) | Python script |
| [07-skills/refactor/templates/refactoring-plan.md](07-skills/refactor/templates/refactoring-plan.md) | Refactoring Plan Template |
| [07-skills/setup-ci-cd/SKILL.md](07-skills/setup-ci-cd/SKILL.md) | Skill `setup-ci-cd` |
| [07-skills/templates/SKILL-template.md](07-skills/templates/SKILL-template.md) | Say in one sentence what this skill does and when the agent should use it |
| [07-skills/trip-packing/SKILL.md](07-skills/trip-packing/SKILL.md) | Skill `trip-packing` |
| [07-skills/weekly-notes/SKILL.md](07-skills/weekly-notes/SKILL.md) | Skill `weekly-notes` |

## Module 8: Ask about your own documents

| File | What it is |
|---|---|
| [08-knowledge-library/README.md](08-knowledge-library/README.md) | Ask about your own documents |
| [08-knowledge-library/recipes/overnight-oats.md](08-knowledge-library/recipes/overnight-oats.md) | Overnight oats |
| [08-knowledge-library/recipes/pancakes.md](08-knowledge-library/recipes/pancakes.md) | Pancakes |
| [08-knowledge-library/recipes/roast-chicken.md](08-knowledge-library/recipes/roast-chicken.md) | Roast chicken |
| [08-knowledge-library/recipes/stir-fry.md](08-knowledge-library/recipes/stir-fry.md) | Vegetable stir-fry |
| [08-knowledge-library/recipes/tomato-soup.md](08-knowledge-library/recipes/tomato-soup.md) | Tomato soup |

## Module 9: Protect your secrets and your files

| File | What it is |
|---|---|
| [09-protect-secrets-and-files/README.md](09-protect-secrets-and-files/README.md) | Protect your secrets and your files |
| [09-protect-secrets-and-files/keep-me/README.md](09-protect-secrets-and-files/keep-me/README.md) | keep-me |

## Module 10: Connect your tools

| File | What it is |
|---|---|
| [10-connections/README.md](10-connections/README.md) | Connect your tools |
| [10-connections/database-mcp.json](10-connections/database-mcp.json) | JSON file |
| [10-connections/filesystem-mcp.json](10-connections/filesystem-mcp.json) | JSON file |
| [10-connections/github-mcp.json](10-connections/github-mcp.json) | JSON file |
| [10-connections/multi-mcp.json](10-connections/multi-mcp.json) | JSON file |

## Module 11: Let it use a website

| File | What it is |
|---|---|
| [11-browser/README.md](11-browser/README.md) | Let it use a website |

## Module 12: Get a daily summary

| File | What it is |
|---|---|
| [12-scheduled-jobs/README.md](12-scheduled-jobs/README.md) | Get a daily summary |
| [12-scheduled-jobs/notes/today.md](12-scheduled-jobs/notes/today.md) | Notes for today |

## Module 13: Tell me when something changes

| File | What it is |
|---|---|
| [13-monitors/README.md](13-monitors/README.md) | Tell me when something changes |

## Module 14: Reach it from your phone or chat app

| File | What it is |
|---|---|
| [14-phone-and-chat-apps/README.md](14-phone-and-chat-apps/README.md) | Reach it from your phone or chat app |

## Module 15: Many tasks at once

| File | What it is |
|---|---|
| [15-parallel-helpers/README.md](15-parallel-helpers/README.md) | Many tasks at once |

## Module 16: Work while you're away

| File | What it is |
|---|---|
| [16-task-runner/README.md](16-task-runner/README.md) | Work while you're away |
| [16-task-runner/examples/TASK.md](16-task-runner/examples/TASK.md) | Task: Start a reading-list folder |
| [16-task-runner/examples/two-item-TASK.md](16-task-runner/examples/two-item-TASK.md) | Task: Start a packing list |

## Module 17: Long jobs that can restart from a step

| File | What it is |
|---|---|
| [17-workflows/README.md](17-workflows/README.md) | Long jobs that can restart from a step |
| [17-workflows/notes/bike.md](17-workflows/notes/bike.md) | Bike |
| [17-workflows/notes/budget.md](17-workflows/notes/budget.md) | Budget |
| [17-workflows/notes/garden.md](17-workflows/notes/garden.md) | Garden |
| [17-workflows/notes/kitchen.md](17-workflows/notes/kitchen.md) | Kitchen |
| [17-workflows/notes/library.md](17-workflows/notes/library.md) | Library |

## Module 18: Keep and improve what it made

| File | What it is |
|---|---|
| [18-artifacts/README.md](18-artifacts/README.md) | Keep and improve what it made |
| [18-artifacts/step-counts.csv](18-artifacts/step-counts.csv) | Sample data (CSV) |

## Module 19: Named specialists with their own memory

| File | What it is |
|---|---|
| [19-mates-and-agents/README.md](19-mates-and-agents/README.md) | Named specialists with their own memory |
| [19-mates-and-agents/agents/clean-code-reviewer.json](19-mates-and-agents/agents/clean-code-reviewer.json) | JSON: Reviews code against clean-code principles: naming, small functions, single resp |
| [19-mates-and-agents/agents/code-reviewer.json](19-mates-and-agents/agents/code-reviewer.json) | JSON: Reviews your latest code changes and lists problems by how much they matter. Rea |
| [19-mates-and-agents/agents/data-scientist.json](19-mates-and-agents/agents/data-scientist.json) | JSON: Answers questions with data: writes SQL, runs it, and explains the results. |
| [19-mates-and-agents/agents/debugger.json](19-mates-and-agents/agents/debugger.json) | JSON: Finds the root cause of an error or failing test and makes the smallest fix. |
| [19-mates-and-agents/agents/documentation-writer.json](19-mates-and-agents/agents/documentation-writer.json) | JSON: Writes clear documentation: API references, how-to guides and changelog entries. |
| [19-mates-and-agents/agents/implementation-agent.json](19-mates-and-agents/agents/implementation-agent.json) | JSON: Builds a feature from a written description: plans, writes code, adds tests and  |
| [19-mates-and-agents/agents/performance-optimizer.json](19-mates-and-agents/agents/performance-optimizer.json) | JSON: Finds what makes code slow, fixes the biggest problem first, and measures the re |
| [19-mates-and-agents/agents/plain-writer.json](19-mates-and-agents/agents/plain-writer.json) | JSON: Rewrites text in plain words and short sentences. Use when you want something ea |
| [19-mates-and-agents/agents/secure-reviewer.json](19-mates-and-agents/agents/secure-reviewer.json) | JSON: Read-only security review. Finds vulnerabilities without running commands or cha |
| [19-mates-and-agents/agents/test-engineer.json](19-mates-and-agents/agents/test-engineer.json) | JSON: Writes and runs tests for new or changed code. Use when a feature is added or co |

## Module 20: Your own automatic checks: hooks

| File | What it is |
|---|---|
| [20-hooks/README.md](20-hooks/README.md) | Your own automatic checks: hooks |
| [20-hooks/post-tool-log.sh](20-hooks/post-tool-log.sh) | Shell script: keep a diary of the tool calls the agent makes. |
| [20-hooks/stop-check-once.sh](20-hooks/stop-check-once.sh) | Shell script: ask the agent to check its work once more before it stops. |

## Module 21: Let another program start a job

| File | What it is |
|---|---|
| [21-webhooks/README.md](21-webhooks/README.md) | Let another program start a job |
| [21-webhooks/post-job.sh](21-webhooks/post-job.sh) | Shell script: ask Kiro Crew to summarize a build log, the way a build server would. |

## Module 22: Build a small app

| File | What it is |
|---|---|
| [22-apps/README.md](22-apps/README.md) | Build a small app |
| [22-apps/habit-tracker/README.md](22-apps/habit-tracker/README.md) | Habit Tracker (example app) |
| [22-apps/habit-tracker/app.json](22-apps/habit-tracker/app.json) | JSON: List a few daily habits, get help choosing a new one, and get a reminder each mo |
| [22-apps/habit-tracker/assets/icon.png](22-apps/habit-tracker/assets/icon.png) | Image |
| [22-apps/habit-tracker/skills/add-habit/SKILL.md](22-apps/habit-tracker/skills/add-habit/SKILL.md) | Skill `add-habit` |
| [22-apps/habit-tracker/ui/.gitignore](22-apps/habit-tracker/ui/.gitignore) | Git ignore rules |
| [22-apps/habit-tracker/ui/package.json](22-apps/habit-tracker/ui/package.json) | JSON file |
| [22-apps/habit-tracker/ui/src/App.tsx](22-apps/habit-tracker/ui/src/App.tsx) | TypeScript page |
| [22-apps/habit-tracker/ui/vite.config.ts](22-apps/habit-tracker/ui/vite.config.ts) | TypeScript config |
| [22-apps/import-demo/README.md](22-apps/import-demo/README.md) | Import demo: turn a plugin into an app |
| [22-apps/import-demo/plugin.json](22-apps/import-demo/plugin.json) | JSON: Write a README and check documentation for problems. |
| [22-apps/import-demo/skills/generate-readme/SKILL.md](22-apps/import-demo/skills/generate-readme/SKILL.md) | Skill `generate-readme` |
| [22-apps/import-demo/skills/validate-docs/SKILL.md](22-apps/import-demo/skills/validate-docs/SKILL.md) | Skill `validate-docs` |

## Module 23: Back up, move, or host it

| File | What it is |
|---|---|
| [23-backup-and-hosting/README.md](23-backup-and-hosting/README.md) | Back up, move, or host it |

## Capstone: My morning desk

| File | What it is |
|---|---|
| [capstone-morning-desk/README.md](capstone-morning-desk/README.md) | Capstone: My morning desk |
| [capstone-morning-desk/morning-brief/SKILL.md](capstone-morning-desk/morning-brief/SKILL.md) | Skill `morning-brief` |
| [capstone-morning-desk/notes/home/2026-10-27.md](capstone-morning-desk/notes/home/2026-10-27.md) | Home notes, 2026-10-27 |
| [capstone-morning-desk/notes/learning/2026-10-26.md](capstone-morning-desk/notes/learning/2026-10-26.md) | Learning notes, 2026-10-26 |
| [capstone-morning-desk/notes/work/2026-10-28.md](capstone-morning-desk/notes/work/2026-10-28.md) | Work notes, 2026-10-28 |
| [capstone-morning-desk/steering/briefing.md](capstone-morning-desk/steering/briefing.md) | Morning briefing rules |
| [capstone-morning-desk/todo.md](capstone-morning-desk/todo.md) | To-do |

## Built-in skills

| File | What it is |
|---|---|
| [.kiro/skills/lesson-quiz/README.md](.kiro/skills/lesson-quiz/README.md) | Lesson quiz |
| [.kiro/skills/lesson-quiz/SKILL.md](.kiro/skills/lesson-quiz/SKILL.md) | Skill `lesson-quiz` |
| [.kiro/skills/lesson-quiz/references/question-bank.md](.kiro/skills/lesson-quiz/references/question-bank.md) | Lesson quiz: question bank |
| [.kiro/skills/lesson-quiz/references/results-template.md](.kiro/skills/lesson-quiz/references/results-template.md) | Results report template |
| [.kiro/skills/self-assessment/README.md](.kiro/skills/self-assessment/README.md) | Self-assessment and learning path |
| [.kiro/skills/self-assessment/SKILL.md](.kiro/skills/self-assessment/SKILL.md) | Skill `self-assessment` |
| [.kiro/skills/self-assessment/references/output-templates.md](.kiro/skills/self-assessment/references/output-templates.md) | Output templates |
| [.kiro/skills/self-assessment/references/topic-recommendations.md](.kiro/skills/self-assessment/references/topic-recommendations.md) | Module recommendations |

## Progress tracker

| File | What it is |
|---|---|
| [local-progress/index.html](local-progress/index.html) | Progress tracker page (open in a browser) |

## Brand assets

| File | What it is |
|---|---|
| [resources/DESIGN-SYSTEM.md](resources/DESIGN-SYSTEM.md) | Kiro Crew How To - Design System |
| [resources/INDEX.txt](resources/INDEX.txt) | Text file |
| [resources/MANIFEST.txt](resources/MANIFEST.txt) | Text file |
| [resources/QUICK-START.md](resources/QUICK-START.md) | Quick Start - Brand Assets |
| [resources/README.md](resources/README.md) | Kiro Crew How To - Brand Assets |
| [resources/favicons/favicon-128.svg](resources/favicons/favicon-128.svg) | SVG image |
| [resources/favicons/favicon-16.svg](resources/favicons/favicon-16.svg) | SVG image |
| [resources/favicons/favicon-256.svg](resources/favicons/favicon-256.svg) | SVG image |
| [resources/favicons/favicon-32.svg](resources/favicons/favicon-32.svg) | SVG image |
| [resources/favicons/favicon-64.svg](resources/favicons/favicon-64.svg) | SVG image |
| [resources/icons/kirocrew-howto-icon-dark.svg](resources/icons/kirocrew-howto-icon-dark.svg) | SVG image |
| [resources/icons/kirocrew-howto-icon.svg](resources/icons/kirocrew-howto-icon.svg) | SVG image |
| [resources/logos/kirocrew-howto-logo-dark.svg](resources/logos/kirocrew-howto-logo-dark.svg) | SVG image |
| [resources/logos/kirocrew-howto-logo.svg](resources/logos/kirocrew-howto-logo.svg) | SVG image |
| [kirocrew-howto-logo.svg](kirocrew-howto-logo.svg) | SVG image |

## Tooling

| File | What it is |
|---|---|
| [.cspell.json](.cspell.json) | JSON file |
| [.github/FUNDING.yml](.github/FUNDING.yml) | YAML config |
| [.github/ISSUE_TEMPLATE/bug_report.md](.github/ISSUE_TEMPLATE/bug_report.md) | Markdown page |
| [.github/ISSUE_TEMPLATE/config.yml](.github/ISSUE_TEMPLATE/config.yml) | YAML config |
| [.github/ISSUE_TEMPLATE/documentation.md](.github/ISSUE_TEMPLATE/documentation.md) | Markdown page |
| [.github/ISSUE_TEMPLATE/feature_request.md](.github/ISSUE_TEMPLATE/feature_request.md) | Markdown page |
| [.github/ISSUE_TEMPLATE/question.md](.github/ISSUE_TEMPLATE/question.md) | Markdown page |
| [.github/SECURITY_REPORTING.md](.github/SECURITY_REPORTING.md) | Security Vulnerability Reporting |
| [.github/TESTING.md](.github/TESTING.md) | Testing Guide |
| [.github/markdown-link-check-config.json](.github/markdown-link-check-config.json) | JSON file |
| [.github/pull_request_template.md](.github/pull_request_template.md) | Markdown page |
| [.github/workflows/docs-check.yml](.github/workflows/docs-check.yml) | YAML config |
| [.github/workflows/pages.yml](.github/workflows/pages.yml) | YAML config |
| [.github/workflows/release.yml](.github/workflows/release.yml) | YAML config |
| [.github/workflows/test.yml](.github/workflows/test.yml) | YAML config |
| [.gitignore](.gitignore) | Git ignore rules |
| [.idd.yml](.idd.yml) | YAML config |
| [.markdownlint.json](.markdownlint.json) | JSON file |
| [.pre-commit-config.yaml](.pre-commit-config.yaml) | YAML config |
| [scripts/README.md](scripts/README.md) | Build Scripts |
| [scripts/build_website.py](scripts/build_website.py) | Python script |
| [scripts/check_cross_references.py](scripts/check_cross_references.py) | Python script |
| [scripts/check_links.py](scripts/check_links.py) | Python script |
| [scripts/check_markdown_rendering.py](scripts/check_markdown_rendering.py) | Python script |
| [scripts/check_mermaid.py](scripts/check_mermaid.py) | Python script |
| [scripts/pele_render.mjs](scripts/pele_render.mjs) | JavaScript helper |
| [scripts/pele_renderer.py](scripts/pele_renderer.py) | Python script |
| [scripts/pyproject.toml](scripts/pyproject.toml) | Python project config |
| [scripts/requirements-dev.txt](scripts/requirements-dev.txt) | Text file |
| [scripts/requirements.txt](scripts/requirements.txt) | Text file |
| [scripts/tests/__init__.py](scripts/tests/__init__.py) | Python script |
| [scripts/tests/conftest.py](scripts/tests/conftest.py) | Python script |
| [scripts/tests/test_build_website.py](scripts/tests/test_build_website.py) | Python script |
| [scripts/tests/test_check_cross_references.py](scripts/tests/test_check_cross_references.py) | Python script |
| [scripts/tests/test_check_markdown_rendering.py](scripts/tests/test_check_markdown_rendering.py) | Python script |
| [scripts/tests/test_check_mermaid.py](scripts/tests/test_check_mermaid.py) | Python script |
| [scripts/tests/test_pele_renderer.py](scripts/tests/test_pele_renderer.py) | Python script |
| [scripts/vendor_assets.py](scripts/vendor_assets.py) | Python script |
| [scripts/website_templates/landing.css](scripts/website_templates/landing.css) | Stylesheet |
| [scripts/website_templates/landing.html.j2](scripts/website_templates/landing.html.j2) | Jinja2 page template |
| [scripts/website_templates/landing.js](scripts/website_templates/landing.js) | JavaScript |
| [scripts/website_templates/page.html.j2](scripts/website_templates/page.html.j2) | Jinja2 page template |
| [scripts/website_templates/roadmap.json](scripts/website_templates/roadmap.json) | JSON file |
| [scripts/website_templates/site.css](scripts/website_templates/site.css) | Stylesheet |
| [scripts/website_templates/tailwind.config.js](scripts/website_templates/tailwind.config.js) | JavaScript |
| [scripts/website_templates/tailwind.input.css](scripts/website_templates/tailwind.input.css) | Stylesheet |

---
**Last updated:** 2026-10-30
**Checked against:** Kiro Crew public source @ 2808e9478c (github.com/kirodotdev/KiroCrew) and kiro.dev/docs/cli
*Part of the [Kiro Crew How To](README.md) guide.*
