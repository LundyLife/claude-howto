<picture>
  <source media="(prefers-color-scheme: dark)" srcset="../resources/logos/kirocrew-howto-logo-dark.svg">
  <img alt="Kiro Crew How To" src="../resources/logos/kirocrew-howto-logo.svg">
</picture>

# Build Scripts

This directory holds the static website builder and the doc checkers. The
`.md` files are the single source of truth. Re-run the builder after editing
markdown to regenerate the site.

- [**Static Website Builder**](#static-website-builder): `build_website.py`
- **Doc checkers**: `check_cross_references.py`, `check_links.py`,
  `check_markdown_rendering.py` and `check_mermaid.py`. Pre-commit runs them
  (see [CONTRIBUTING.md](../CONTRIBUTING.md#3-set-up-your-environment)).

The guide ships in English only, as markdown and as this website.

## Running tests

```bash
source .venv/bin/activate
pytest scripts/tests/ -v
```

## Troubleshooting

**`Pele is unavailable`**: install Node.js >= 20 and make sure `node` is on
`PATH` (`node --version`).

**Pele bundle download or checksum failure**: the first run downloads the
pinned Pele bundle from cdn.jsdelivr.net and checks every file's sha256.
Offline or behind a proxy, run once with network access; later runs use the
cache in `scripts/.vendor-cache/pele/<version>/`. A checksum mismatch means the
download was altered or cut short: delete that folder and run again.

---

# Static Website Builder

Generate a mobile-friendly static website from the tutorial markdown files.
The website is the rendered view; the `.md` files remain the single source of
truth.

## Features

- One HTML page per markdown source — internal `.md` links are rewritten to
  the corresponding pages on the site
- References to non-markdown repo files (templates, scripts, JSON) become
  GitHub blob URLs that open the source on github.com
- Mermaid diagrams render client-side with Pele (`pele.global.js`), served
  from the built site (no CDN at runtime); they follow the dark mode toggle
- Tailwind CSS compiled with the standalone CLI (Go binary, no Node.js) and
  served from the built site — responsive layout with sidebar nav, in-page
  TOC, dark mode toggle, and prev/next page navigation
- Inter + JetBrains Mono fonts are self-hosted alongside the CSS — no
  third-party requests at page load
- Follows the curriculum order in `CHAPTER_ORDER` (top-level guides, Modules
  `00-` to `23-`, the capstone, then reference pages)
- Hostable as plain static files — designed to deploy to GitHub Pages

## Quick Start

```bash
# Build the website into ./site/
uv run scripts/build_website.py

# Preview locally
python -m http.server --bind 127.0.0.1 --directory site 8080
# then open http://localhost:8080
```

## Command-Line Options

```text
usage: build_website.py [-h] [--root ROOT] [--output OUTPUT]
                        [--repo-url REPO_URL] [--branch BRANCH] [--verbose]

options:
  --root, -r ROOT       Source root (default: repo root)
  --output, -o OUTPUT   Output directory (default: <repo>/site)
  --repo-url URL        GitHub repo for blob links (default: LundyLife/kirocrew-howto)
  --branch BRANCH       Branch for blob links (default: main)
  --verbose, -v         Enable verbose logging
```

## GitHub Pages Deploy

The repo ships a workflow at `.github/workflows/pages.yml` that builds the
site on every push to `main` (when any `.md` or generator file changes) and
publishes via `actions/deploy-pages`. Enable GitHub Pages in repo settings
with **Source: GitHub Actions** to activate it.

## Architecture

`build_website.py` walks the folders in `CHAPTER_ORDER` and ships HTML
templates under `scripts/website_templates/`:

- `page.html.j2` — per-page Jinja2 template with sidebar nav, TOC, prev/next
- `tailwind.config.js`, `tailwind.input.css` — config + entry CSS for the
  Tailwind standalone CLI; the CLI scans the built HTML and produces
  `site/assets/tailwind.css` with just the utilities actually used
- `site.css` — small layer of site-specific styles plus Pygments theme
- `roadmap.json` — the landing page's learning roadmap: four levels, Modules
  0-23 and the capstone. Each lesson names a module heading, and the build
  fails if that heading does not exist

The Tailwind CLI binary, Pele bundle, and font files are downloaded on
first build into `scripts/.vendor-cache/` (gitignored) — see
`scripts/vendor_assets.py`.

Heading anchors are generated using the exact algorithm in
`check_cross_references.heading_to_anchor`, so `#anchor` links validated by
the pre-commit hook resolve correctly on the rendered site.
