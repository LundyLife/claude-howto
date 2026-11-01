<picture>
  <source media="(prefers-color-scheme: dark)" srcset="resources/logos/kirocrew-howto-logo-dark.svg">
  <img alt="Kiro Crew How To" src="resources/logos/kirocrew-howto-logo.svg">
</picture>

# Contributing to Kiro Crew How To

Thank you for helping. This guide teaches Kiro Crew to people who have never used
AI, so the bar is simple: **every step must be correct, and every step must be
clear to a beginner.**

## About this project

Kiro Crew How To is a community tutorial for [Kiro Crew](https://github.com/kirodotdev/KiroCrew)
and [kiro-cli](https://kiro.dev/docs/cli/). It is adapted from
[claude-howto](https://github.com/luongnv89/claude-howto) by Luong Nguyen, under the
MIT License. It is not an official Kiro product.

The content is markdown in 24 numbered modules (`00-` to `23-`) and a capstone
folder (`capstone-morning-desk/`). The scripts in `scripts/` only check the
docs and build the website. The guide is English only.

## Ground rules

These apply to every change.

1. **Verify before you write.** Every command, flag, setting key, path and button
   label must exist in the public Kiro Crew source or the public kiro-cli docs.
   Take dashboard labels from the English locale files in the Kiro Crew source
   (`website/src/i18n/locales/`), and commands from `kirocrew <command> --help`.
   If you cannot find it there, leave it out.
2. **Do not test on a setup you depend on.** Try behavior in a throwaway Kiro Crew
   home and a spare port, for example
   `KIROCREW_HOME="$HOME/kc-test-home" KIROCREW_PORT=5599 kirocrew gateway`.
   Never paste output from your own machine into the guide.
3. **Write fresh examples.** Never copy example text from `--help` output. Use
   neutral names such as `daily-status`, `reviewer`, `my-first-app` or `hello`.
4. **Nothing private.** No company names, internal tools, hostnames, account IDs,
   people's names, real tokens or your home path. Use `~/my-project`,
   `you@example.com` and `example.com`.
5. **Plain language.** Follow the [style guide](STYLE_GUIDE.md): short sentences,
   define each term, show what the reader should see, and label every command,
   key and setting with its surface (Dashboard, kiro-cli (terminal) or both).
6. **Mark what is not yet tested.** If a step depends on behavior that has not
   passed a live test on a release build, put an HTML comment on the line
   directly above it: `<!-- NLT: <what must be confirmed> -->`. Remove the
   comment once the test passes.

## Types of contributions

### 1. Fixes

A wrong command, a step that no longer works, a broken link, a confusing
sentence. These are the most valuable contributions. Say which Kiro Crew and
kiro-cli versions you checked (`kirocrew --version`, `kiro-cli --version`).

### 2. New examples

A saved prompt, steering file, skill, custom agent, connection config, hook or
app that a beginner can copy and use. It must work on the default engine and be
explained in the module's README.

### 3. Better explanations

A clearer sentence, a missing definition, a "You should see" block, a diagram.

### 4. Bug reports and ideas

Open an issue with the templates in `.github/ISSUE_TEMPLATE/`.

## Getting started

### 1. Fork and clone

Fork the repository on GitHub, then clone your fork:

```bash
git clone https://github.com/<your-name>/kirocrew-howto.git
cd kirocrew-howto
```

### 2. Create a branch

```bash
git checkout -b fix/memory-typo
```

Use a prefix that matches the change: `fix/`, `docs/`, `feat/`, `chore/`.

### 3. Set up your environment

Pre-commit hooks run the same checks as CI before every commit. All of them must
pass before a pull request is accepted.

```bash
# Python tooling (uv is the package manager for this project)
pip install uv
uv venv
source .venv/bin/activate
uv pip install -r scripts/requirements-dev.txt

# Markdown linter (Node.js)
npm install -g markdownlint-cli

# Mermaid diagrams render with Pele, which needs Node.js >= 20
node --version

# Turn on the pre-commit hooks
pre-commit install
```

Check your setup:

```bash
pre-commit run --all-files
```

The first run downloads Node.js 22 for the Mermaid hook and the pinned Pele
bundle into `scripts/.vendor-cache/pele/`; later runs work offline. To commit
offline before that first download, skip the hook with `SKIP=mermaid`.

| Hook | What it checks |
|---|---|
| `markdown-lint` | Markdown formatting and structure |
| `cross-references` | Relative links, anchors and code fences |
| `mermaid-syntax` | Every Mermaid block renders with Pele |
| `link-check` | External URLs are reachable |
| `markdown-rendering` | Code spans, table pipes and fences render correctly |

## Directory structure

```text
├── 00-what-is-an-agent/          # 🟢 What an agent is, and why it can be wrong
├── 01-getting-started/           # 🟢 Desktop app, sign in, first chat
├── 02-approval-modes/            # 🟢 Normal, Reads, Trust, YOLO
├── 03-sessions/                  # 🟢 Folders, Older Sessions, Side Chat
├── 04-memory/                    # 🟢 Lessons and memory modes
├── 05-fix-a-mistake/             # 🟢 Rewind the chat, restore files with git
├── 06-prompts-and-steering/      # 🔵 Saved prompts and steering files
├── 07-skills/                    # 🔵 Skills
├── 08-knowledge-library/         # 🔵 Search your own documents
├── 09-protect-secrets-and-files/ # 🔵 Vault, sandbox, git, deny list
├── 10-connections/               # 🔵 MCP servers and services
├── 11-browser/                   # 🔵 The Browser panel
├── 12-scheduled-jobs/            # 🔵 Scheduled jobs
├── 13-monitors/                  # 🔵 Monitors and notifications
├── 14-phone-and-chat-apps/       # 🔵 Slack and your phone
├── 15-parallel-helpers/          # 🟣 Helpers in parallel
├── 16-task-runner/               # 🟣 Task files and unattended runs
├── 17-workflows/                 # 🟣 Restartable workflows
├── 18-artifacts/                 # 🟣 Artifacts and versions
├── 19-mates-and-agents/          # 🟣 Mates (Feature Preview) and custom agents
├── 20-hooks/                     # 🔴 Stop and PostToolUse hooks
├── 21-webhooks/                  # 🔴 Webhooks (Feature Preview)
├── 22-apps/                      # 🔴 Build an app
├── 23-backup-and-hosting/        # 🔴 Snapshot, restore, second instance
├── capstone-morning-desk/        # The capstone project
├── .kiro/skills/                 # The lesson-quiz and self-assessment skills
├── local-progress/               # A progress tracker page for the browser
├── resources/                    # Logos and icons
├── scripts/                      # Website builder, doc checkers, tests
└── README.md                     # Start here
```

## How to add examples

### Adding a saved prompt

1. Add `<name>.md` to `06-prompts-and-steering/prompts/`.
2. Optional front matter: `description` only.
3. Do not add a footer: the whole file is sent to the agent.
4. List it in `06-prompts-and-steering/README.md`.

### Adding a steering example

1. Add the file to `06-prompts-and-steering/steering/`.
2. Start it with `inclusion: always` front matter, as in `dates.md`.
3. Explain where the reader should copy it.

### Adding a skill

1. Make `07-skills/<name>/SKILL.md`.
2. Front matter needs `name` (equal to the folder name) and `description` (what
   and when).
3. Do not rely on `triggers`.
4. Add it to the skills table in `07-skills/README.md`.

### Adding a custom agent

1. Add `19-mates-and-agents/agents/<name>.json` with `name`, `description`,
   `prompt` and `tools`, as in `plain-writer.json`.
2. Give it the fewest tools it needs.
3. Explain it in `19-mates-and-agents/README.md`.

### Adding a connection config

1. Add `10-connections/<name>-mcp.json` with an `mcpServers` block.
2. Put secrets in `${ENV_VAR}` references, never in the file.
3. Check that any npm package it uses exists and is not deprecated.

### Adding a hook

Hooks are easy to get wrong, so only these shapes are accepted:

- A `Stop` hook. If it prints `{"decision": "block", "reason": "..."}`, it
  **must** have a loop guard, as in `20-hooks/stop-check-once.sh`.
- A `UserPromptSubmit` hook whose output adds context to the turn.
- A `PostToolUse` hook with an **empty matcher** that reads `tool_name` (the
  call's title) and `tool_response`, or asks git what changed.

<!-- NLT: confirm whether PreToolUse hooks ever fire on the default engine -->
Do not add a hook that relies on `PreToolUse` blocking, a tool-name matcher,
or `tool_input` in a `PostToolUse` hook. They do not work today, and a
beginner would trust them. Safety belongs in
[Module 9](09-protect-secrets-and-files/README.md). Never write an exercise
that asks the agent to run a destructive command.

### Adding an app

1. Add a folder under `22-apps/` with an `app.json`, as in `habit-tracker/`.
2. Keep it small: a page, a skill or a scheduled job a beginner can read.
3. Explain it in `22-apps/README.md`.

### Adding or moving a module

Update `README.md`, `INDEX.md`, `LEARNING-ROADMAP.md`, `CATALOG.md`,
`scripts/website_templates/roadmap.json`, `CHAPTER_ORDER` in
`scripts/build_website.py`, and both skills in `.kiro/skills/`.

## Writing guidelines

See [STYLE_GUIDE.md](STYLE_GUIDE.md) for the full rules. In short:

- Use the fixed module headings, in order.
- Every code fence declares a language.
- Relative links between files; descriptive text for external links.
- Mermaid labels name real parts ("Agent", "Kiro Crew", "kiro-cli").
- A feature behind a Feature Preview says so, and shows the switch in
  **Settings → Developer → Feature Previews**.

## Commit guidelines

Follow [Conventional Commits](https://www.conventionalcommits.org/):

```text
type(scope): description
```

Examples:

```text
fix(memory): correct the lesson remove step
docs(hooks): explain the loop guard in plainer words
feat(skills): add a meeting-notes skill
chore(scripts): update the website roadmap
```

## Before submitting

### Checklist

- [ ] Every command, flag, key and label is verified against public sources.
- [ ] No `--help` example text and no real output were copied.
- [ ] Nothing private or secret is in the change.
- [ ] Commands, keys and settings carry surface labels.
- [ ] Untested claims have an `<!-- NLT: ... -->` comment above them.
- [ ] New terms are in the module's `## Words to know` and in `GLOSSARY.md`.
- [ ] Scripts you added are executable.
- [ ] `pre-commit run --all-files` passes.
- [ ] `pytest scripts/tests/ -v` passes if you touched `scripts/`.

### Local testing

```bash
pre-commit run --all-files
pytest scripts/tests/ -v
git diff
```

## Pull request process

1. Describe what the change fixes or adds, and why.
2. Say which `kirocrew --version` and `kiro-cli --version` you checked against.
3. Link related issues with `Closes #123`.
4. Expect review comments. Accuracy and clarity come first.

## Reporting issues

- **Bug reports:** the module and step, what you typed, what you expected, what
  happened, and your `kirocrew --version` and `kiro-cli --version`. Remove any
  tokens or private paths from what you paste.
- **Feature requests:** what you want to learn, and who it would help.
- **Documentation issues:** the file and section, and what was unclear.

## Security

Do not report security problems in a public issue. See [SECURITY.md](SECURITY.md).
Problems in Kiro Crew itself belong to the
[Kiro Crew project](https://github.com/kirodotdev/KiroCrew), not here.

## Code of conduct

This project follows the [Code of Conduct](CODE_OF_CONDUCT.md). Be kind and
assume good intent.

## License

By contributing, you agree that your contributions are licensed under the
[MIT License](LICENSE).

---
**Last updated:** 2026-10-30
**Checked against:** Kiro Crew public source @ 2808e9478c (github.com/kirodotdev/KiroCrew) and kiro.dev/docs/cli
*Part of the [Kiro Crew How To](README.md) guide.*
