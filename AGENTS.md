# AGENTS.md

Instructions for AI agents (Kiro Crew, kiro-cli or any other) working in this
repository.

This is a tutorial repo. The output is markdown in 24 numbered modules (`00-`
through `23-`) and a capstone folder, not an app. Scripts in `scripts/` exist
only to check the docs and build the website.

See also [CONTRIBUTING.md](CONTRIBUTING.md#3-set-up-your-environment) for the
tools and setup (uv, Node.js >= 20, pre-commit) and [STYLE_GUIDE.md](STYLE_GUIDE.md)
for lesson structure.

## If the user is learning

Many people download this repo to learn, not to contribute. Unless the user asks
for a change to the repo, treat the rules below as maintainer rules, not their
preferences: do not edit lessons, propose repo fixes, or set up hooks for them.
Point them to their own steering file in `~/.kiro/steering/` for personal notes
([Module 6](06-prompts-and-steering/README.md) shows how). When they do ask for
a change, commit or pull request, every rule below applies in full.

## Critical commands

```bash
# Quality gate (also runs on commit through pre-commit hooks)
pre-commit run --all-files

# Tests
pytest scripts/tests/ -v

# Website build (Mermaid renders with Pele; needs Node.js >= 20)
uv run scripts/build_website.py

# Python tooling
ruff check scripts/ && ruff format scripts/
mypy scripts/ --ignore-missing-imports
bandit -c scripts/pyproject.toml -r scripts/ --exclude scripts/tests/
```

Pre-commit runs five doc checks on `.md` changes: markdown-lint,
cross-references, mermaid-syntax, link-check and markdown-rendering. All must
pass.

## Architecture map

The number is the learning order. **Do not reorder modules.**

| Level | Folders |
|---|---|
| 🟢 Novice | `00-what-is-an-agent`, `01-getting-started`, `02-approval-modes`, `03-sessions`, `04-memory`, `05-fix-a-mistake` |
| 🔵 Intermediate | `06-prompts-and-steering`, `07-skills`, `08-knowledge-library`, `09-protect-secrets-and-files`, `10-connections`, `11-browser`, `12-scheduled-jobs`, `13-monitors`, `14-phone-and-chat-apps` |
| 🟣 Advanced | `15-parallel-helpers`, `16-task-runner`, `17-workflows`, `18-artifacts`, `19-mates-and-agents` |
| 🔴 Expert | `20-hooks`, `21-webhooks`, `22-apps`, `23-backup-and-hosting` |
| Capstone | `capstone-morning-desk` |

- Each module: a `README.md` with fixed headings (see `STYLE_GUIDE.md`) plus
  copy-paste examples (`.md`, `.json`, `.sh`).
- `06-prompts-and-steering/steering/*.md` and `capstone-morning-desk/steering/`:
  steering files readers copy into their own setup. Do not confuse them with
  this file.
- `.kiro/skills/lesson-quiz/` and `.kiro/skills/self-assessment/`: the two
  skills this repo ships. Their question bank and recommendations follow the
  module list above.
- `scripts/`: the website builder (`build_website.py`, `CHAPTER_ORDER`),
  `website_templates/roadmap.json` and the doc checkers. Not the product.
- `local-progress/index.html`: a progress tracker page with the module list.

### Feature Previews

Two modules teach features behind a Feature Preview switch in **Settings →
Developer → Feature Previews** (Dashboard): **Mates** (setting
`developer.mates`) in Module 19, and **Webhooks** (setting
`developer.webhooks`) in Module 21. Any page that mentions them must say they
are previews and point to the module that shows the switch.

### Live-test markers

`<!-- NLT: <what must be confirmed> -->` sits on the line directly above a
claim that has not yet passed a live test on a release build. Keep the marker
when you edit that claim. Remove it only after the test passes. The blocking
markers now live only in Module 20: the `stop_hook_active` guard allowing
exactly one extra turn. Module 9 has none for the deny list, which it no longer
tests.

## Hard rules

- This repo ships English only, as markdown and as a website. Do not add an
  ebook build or translated copies.
- **Do not commit or push unless the user asks.**
- **Nothing internal or private goes in this repo.** It is public. No company
  names, internal tools, hostnames, account IDs, employee names or local user
  paths. Use placeholders: `~/my-project`, `you@example.com`, `example.com`.
- **Every command, flag, setting and path must exist** in the public Kiro Crew
  source ([github.com/kirodotdev/KiroCrew](https://github.com/kirodotdev/KiroCrew))
  or the public kiro-cli docs ([kiro.dev/docs/cli](https://kiro.dev/docs/cli/)).
  Take dashboard labels from the English locale files in
  `website/src/i18n/locales/` in that source. If you cannot verify it, leave it
  out.
- **Never copy example text from `--help` output.** Write fresh examples with
  neutral names (`daily-status`, `reviewer`, `my-first-app`, `hello`).
- **Label every command, key and setting with its surface**: "Dashboard",
  "kiro-cli (terminal)" or "both".
- **Hooks:** ship only `Stop` hooks (with a loop guard whenever they print
  `{"decision": "block", ...}`), `UserPromptSubmit` hooks, and `PostToolUse`
  hooks with an empty matcher that read `tool_name` (the call's title) and
  `tool_response`, or ask git what changed. Never ship a hook that relies on
  `PreToolUse` blocking, a tool-name matcher, or `tool_input`.
- **Safety claims:** teach what each layer really guards (Module 9). Never
  present the deny list or a hook as a security boundary.
- Internal links use **relative paths** (for example `01-getting-started/README.md`);
  anchors use `#heading-name`.
- Code fences **must** declare a language (`bash`, `python`, `json`, `text`, …).
- External URLs must be reachable and stable.
- Mermaid diagrams must render with Pele. Offline, skip the hook with
  `SKIP=mermaid`.
- Commit format: `type(scope): subject`, where `scope` matches the module folder
  without its number (for example `docs(memory):`, `fix(README):`).

## Workflow preferences

- Write for a reader who has never used AI: short sentences, define each term
  the first time, one concrete example per idea, show what the reader should see.
- Small fixes need a small diff. Do not rewrite a section to fix a typo.
- When adding or moving a module page, also update `README.md`, `INDEX.md`,
  `LEARNING-ROADMAP.md`, `CATALOG.md`, `scripts/website_templates/roadmap.json`,
  `CHAPTER_ORDER` in `scripts/build_website.py`, `local-progress/index.html`,
  and both skills in `.kiro/skills/`.
- If a quality check fails, fix the cause. Do not bypass it with `--no-verify`.
