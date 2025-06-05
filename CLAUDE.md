# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is the **Human Governed AI Development Playbook** documentation repository - an open-source methodology for autonomous software development with AI agents, governed by humans at key decision points. The repository contains comprehensive documentation about the SAGE (SlackDevs Agentic Governance Engine) system that orchestrates 16 specialized AI agents throughout the software development lifecycle.

## Project Structure

- `docs-en/` - English documentation (primary/authoritative version)
- `docs-es/` - Spanish documentation (secondary, may be outdated)
- `mkdocs.yml` - MkDocs configuration for English site
- `mkdocs-es.yml` - MkDocs configuration for Spanish site
- `material/` - Custom MkDocs Material theme overrides and hooks
- `sdc-build.sh` - Build script for both language versions
- `sdc-serve.sh` - Development server script with language selection

## Common Development Commands

### Documentation Build and Serve
```bash
# Full build (both languages)
./sdc-build.sh

# Development server with language selection
./sdc-serve.sh

# Direct MkDocs commands
mkdocs build -f mkdocs.yml -d site          # Build English
mkdocs serve -f mkdocs.yml                  # Serve English
mkdocs build -f mkdocs-es.yml -d site/es    # Build Spanish
mkdocs serve -f mkdocs-es.yml               # Serve Spanish
```

### Dependencies
```bash
# Setup Python virtual environment and install dependencies
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

## Architecture

### Core Documentation Structure
- **Manifesto** (`manifesto.md`) - Core principles and vision
- **About** (`about.md`) - Project motivation and contact information
- **Human Governed AI Development Playbook** (`human-governed-ai-development-playbook/`) - Main methodology guides
- **Agents** (`agents/`) - 16 specialized AI agent specifications
- **Blog** (`blog/`) - Updates and posts

### Agent System (SAGE)
The documentation describes 16 specialized AI agents (IDs 00-15) that handle different aspects of software development:
- **Core Workflow Agents** (00-11): Prompt refining, requirements analysis, architecture, implementation, testing, documentation, PR management, deployment, maintenance
- **Specialized Agents** (12-15): Security, performance, integration, DevOps

### Key Features
- Technology-agnostic methodology supporting any tech stack
- Risk-proportionate governance scaling from solo to enterprise
- Complete branch isolation for task execution
- Comprehensive quality gates and compliance framework

## Development Guidelines

### Content Focus
- **English version** (`docs-en/`) is the authoritative source
- **Spanish version** (`docs-es/`) is provided for translation review but may be outdated
- All primary development should focus on English documentation

### MkDocs Material Configuration
- Uses MkDocs Material theme with extensive customization
- Supports code highlighting, social cards, blog functionality
- Custom hooks for shortcodes and translations in `material/overrides-*/hooks/`
- Configured for both light/dark themes with custom branding

### Content Types
- Methodology guides explaining the Human Governed AI Development Playbook approach
- Agent specifications detailing each AI agent's role and capabilities
- Enterprise governance frameworks and compliance guides
- Role-based implementation guides for different team structures

## Important Notes

- The repository is primarily documentation-focused with no application code
- Build process generates static sites for deployment
- Spanish content is secondary and may not be current
- Focus on maintaining clarity and consistency in methodology documentation