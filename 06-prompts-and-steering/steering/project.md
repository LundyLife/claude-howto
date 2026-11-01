---
inclusion: always
---

# Project rules: Shop Demo

Standing rules for this project. Save this file as
`~/my-project/.kiro/steering/project.md` and change the details to match your
project. It applies only to chats whose project folder is `~/my-project`.

## What this project is

- **Name:** Shop Demo, a small online shop used for practice.
- **Tools:** Node.js 20, PostgreSQL, React 18.

## Commands

| Command | What it does |
|---|---|
| `npm run dev` | Start the app on your computer |
| `npm test` | Run all tests |
| `npm run lint` | Check code style |
| `npm run build` | Build the app for release |

Run `npm test` after every code change, and tell me the result.

## Code style

- Format code with Prettier, so every file looks the same.
- Indent with 2 spaces.
- Keep lines under 100 characters.

## Names

- **Files:** kebab-case, such as `user-controller.js`.
- **Classes:** PascalCase, such as `UserService`.
- **Functions and variables:** camelCase, such as `getUserById`.
- **Constants:** UPPER_SNAKE_CASE, such as `API_BASE_URL`.

## Git

- Branch names: `feature/<what>` or `fix/<what>`.
- Commit messages follow Conventional Commits, such as `fix: handle empty cart`.
- Ask me before you commit.

## Tests

- Name test files `*.test.ts`.
- Add a test with every bug fix, so the bug cannot quietly come back.

## Secrets

- Never write passwords or keys in code. Read them from environment variables.
