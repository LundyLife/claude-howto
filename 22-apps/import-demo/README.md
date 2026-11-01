<picture>
  <source media="(prefers-color-scheme: dark)" srcset="../../resources/logos/kirocrew-howto-logo-dark.svg">
  <img alt="Kiro Crew How To" src="../../resources/logos/kirocrew-howto-logo.svg">
</picture>

# Import demo: turn a plugin into an app

This folder is a tiny **plugin package**: the kind of add-on some other AI
tools use. It has a `plugin.json` manifest and two skills, `generate-readme`
and `validate-docs`, rebuilt from an older documentation plugin.

```text
import-demo/
├── plugin.json            ← the plugin's manifest
└── skills/
    ├── generate-readme/
    │   └── SKILL.md
    └── validate-docs/
        └── SKILL.md
```

`kirocrew app import` reads a folder like this and writes a new Kiro Crew app
folder with an `app.json`. It only reads JSON and copies files: nothing in the
plugin runs while it converts.

What it carries over, and what it does not:

| In the plugin | In the app |
|---|---|
| Skills (`SKILL.md` folders) | Copied into the app's `skills/` |
| MCP servers listed in the manifest | Copied into `app.json` |
| Name, version, description, license, keywords | Copied into `app.json` |
| Hooks | Reported, not converted |
| Anything the converter does not read | Named in a warning |

The steps are in [Module 22](../README.md#going-further-expert).

---
**Last updated:** 2026-10-30
**Checked against:** Kiro Crew public source @ 2808e9478c (github.com/kirodotdev/KiroCrew) and kiro.dev/docs/cli
*Part of the [Kiro Crew How To](../../) guide.*
