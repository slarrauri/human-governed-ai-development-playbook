 # AGENTS.md

 This file provides guidance to Codex-based AI agents when working within the **Human Governed AI Development Playbook** repository.

 ## Repository Overview

 - Purpose: Documentation of the SAGE (SlackDevs Agentic Governance Engine) methodology for human-governed AI software development.
 - Structure:
   - `docs-en/` – English source (authoritative)
   - `docs-es/` – Spanish translations (secondary)
   - `material/` – MkDocs Material custom theme and hooks
   - `mkdocs.yml` – English site config
   - `mkdocs-es.yml` – Spanish site config
   - `sdc-build.sh`, `sdc-serve.sh` – build and serve scripts
   - `LICENSE.md`, `README.md`, supporting docs

 ## Agent Responsibilities

 1. Focus on `docs-en/` for new content or edits; update `docs-es/` only as a translation step.
 2. Preserve existing style and formatting conventions: Markdown headings, lists, code blocks.
 3. Keep commits small and atomic; provide a concise commit message.
 4. Run `pre-commit` checks on modified files before finalizing a change.

 ## Development Workflow

 1. Activate Python virtual environment:
    ```bash
    python3 -m venv .venv
    source .venv/bin/activate
    pip install -r requirements.txt
    ```
 2. For documentation changes:
    - Build English site: `mkdocs build -f mkdocs.yml -d site`
    - Serve locally: `mkdocs serve -f mkdocs.yml`
    - (Optional) Spanish build: `mkdocs build -f mkdocs-es.yml -d site/es`
 3. Use `sdc-build.sh` for full build; `sdc-serve.sh` for localized serve.

 ## Coding Guidelines

 - Do not introduce application code; this repo is documentation-only.
 - Keep Markdown concise and clear; follow existing patterns.
 - Update navigation in `mkdocs.yml` if adding top-level docs.
 - Validate links and front matter metadata after edits.

 ## Git & Version Control

 - Create feature branches for non-trivial changes.
 - Rebase or merge from `main` as needed.
 - Ensure `site/` is in `.gitignore`; no generated output should be committed.

 ## Helpful Commands

 ```bash
 # Check status
 git status

 # Stage and commit changes
 git add <files>
 git commit -m "<short description>"

 # Run pre-commit hooks
 pre-commit run --files <files>
 ```