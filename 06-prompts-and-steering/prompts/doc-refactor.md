---
description: Reorganize a project's documentation so it is easier to follow
---

# Documentation refactor

Reorganize the documentation in this project. Match the plan to the kind of
project it is.

1. **Look first.** Work out what kind of project this is (library, web app,
   command-line tool, service) and who reads its docs.
2. **One home for docs.** Move detailed technical docs into a `docs/` folder and
   fix the links between them.
3. **A short root README.** Keep the root `README.md` as the front door: what the
   project is, a quick start, a short map of the parts, the license.
4. **Per-part READMEs.** Add a short `README.md` to each main folder with how to
   set it up and test it.
5. **Sort `docs/`** into sections that fit the project, for example architecture,
   API reference, troubleshooting, deployment, contributing.
6. **Guides.** Add only the guides this project needs: user guide, API guide,
   development guide or deployment guide.
7. **Diagrams.** Draw diagrams in Mermaid so they live in the text.

Show me the plan before you move or change any file. Keep the docs short and easy to scan.
