<picture>
  <source media="(prefers-color-scheme: dark)" srcset="../../resources/logos/kirocrew-howto-logo-dark.svg">
  <img alt="Kiro Crew How To" src="../../resources/logos/kirocrew-howto-logo.svg">
</picture>

# Habit Tracker (example app)

A small Kiro Crew **app** for [Module 22](../README.md). It was started with
`kirocrew app init habit-tracker --ui --cron` and then trimmed down.

It has three parts:

| Part | File | What it does |
|---|---|---|
| A page | `ui/src/App.tsx` | Lists your habits. Tick one off for today, add one, or remove one. The list is kept in this browser. |
| A skill | `skills/add-habit/SKILL.md` | Helps you choose one small daily habit and word it well. |
| A scheduled job | `crons` in `app.json` | Every morning at 08:00, reminds you to open the page. |

```text
habit-tracker/
├── app.json              ← the manifest: name, page, skill, job, permissions
├── assets/
│   └── icon.png          ← store icon (a placeholder from the scaffold)
├── skills/
│   └── add-habit/
│       └── SKILL.md
├── ui/
│   ├── package.json
│   ├── vite.config.ts
│   └── src/
│       └── App.tsx
└── README.md
```

Change `timezone` in `app.json` to your own time zone name (for example
`Europe/London`) before you install it.

The steps to build, install and turn it on are in [Module 22](../README.md).

---
**Last updated:** 2026-10-30
**Checked against:** Kiro Crew public source @ 2808e9478c (github.com/kirodotdev/KiroCrew) and kiro.dev/docs/cli
*Part of the [Kiro Crew How To](../../) guide.*
