---
name: setup-ci-cd
description: Add automatic quality checks to a project - checks before each commit and GitHub Actions workflows - after showing a plan. Use when the user asks to set up CI, CI/CD, pre-commit checks, or GitHub Actions.
---

# Set up CI/CD checks

Add automatic quality checks to the user's project. CI/CD means "continuous
integration and delivery": checks that run every time code changes.

## 1. Look first

Find out:

- the language and framework,
- the build tool,
- the tools the project already uses (formatter, linter, tests),
- any check config that already exists, such as `.pre-commit-config.yaml` or
  `.github/workflows/`.

Keep every config file the project already has. Add to it. Do not replace it.

## 2. Show a plan

Before you create or change any file, show the user a short plan:

1. **Checks before each commit**, using tools that fit the language:
   - formatting, for example Prettier, Black, gofmt or rustfmt,
   - linting, for example ESLint, Ruff, golangci-lint or Clippy,
   - a security scan, for example Bandit, gosec, cargo-audit or npm audit,
   - type checking, if the language has it,
   - the project's tests.
2. **GitHub Actions workflows** in `.github/workflows/` that run the same checks
   on every push and pull request.

Use free, open-source tools. Wait for the user to say yes.

## 3. Add the checks

1. Add the pre-commit config.
2. Add one workflow file per job, with a clear `name:`.
3. Pin each action and tool to a version.
4. Never put a password, key or token in a config file. If a check needs one,
   tell the user to store it as a repository secret and read it from there.

## 4. Check it works

Run the checks on the user's computer and report:

- which checks passed,
- which failed, with the first error from each,
- the files you created or changed.

Do not commit or push. Tell the user the next step is to commit the new files.
