# Human Governed AI Development Playbook

 Part of the [Slackdevs](https://slackdevs.com) initiative.

 **We don’t automate developers — we multiply them.**

A comprehensive methodology for autonomous software development using specialized AI agents while maintaining human governance and control at critical decision points.

 ## Table of Contents

 - [Introduction](#introduction)
 - [Prerequisites](#prerequisites)
 - [Installation](#installation)
 - [Development](#development)
 - [Building the Site](#building-the-site)
 - [Deployment](#deployment)
 - [Visitor Language Redirection](#visitor-language-redirection)
 - [Project Structure](#project-structure)
 - [Contributing](#contributing)
 - [License](#license)

 ## Introduction

This repository contains the source for the Human Governed AI Development Playbook documentation and website. It is built with [MkDocs](https://www.mkdocs.org/) and the [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) theme.

 ## Prerequisites

 - Python 3.8 or newer
 - pip

 ## Installation

 1. Clone the repository:

    ```bash
    git clone https://github.com/slackdevs/human-governed-ai-development-playbook
    cd human-governed-ai-development-playbook
    ```

 2. (Optional) Create and activate a virtual environment:

    ```bash
    python3 -m venv .venv
    source .venv/bin/activate
    ```

 3. Install the required dependencies:

    ```bash
    pip install -r requirements.txt
    ```

 ## Development

To serve the documentation locally:

### English Version
```bash
# Using the automation script
./sdc-serve.sh

# Or manually
mkdocs serve -f mkdocs.yml
```

### Spanish Version (Pending Translation)
```bash
# Using the automation script (when available)
./sdc-serve-es.sh

# Or manually (when mkdocs-es.yml is created)
mkdocs serve -f mkdocs-es.yml
```

Browse to `http://127.0.0.1:8000` to view the site.

## Building the Site

To build the static site:

### English Version
```bash
# Using the automation script
./sdc-build.sh

# Or manually
mkdocs build -f mkdocs.yml
```

### Spanish Version (Pending Translation)
```bash
# Using the automation script (when available)
./sdc-build-es.sh

# Or manually (when mkdocs-es.yml is created)
mkdocs build -f mkdocs-es.yml
```

The generated files will be placed in the `site/` directory.

 ## Automation Scripts

The project includes automation scripts for building and serving the documentation:

### English Scripts
- **`sdc-build.sh`** - Builds the English documentation
- **`sdc-serve.sh`** - Serves the English documentation locally for development

### Spanish Scripts (Pending Translation)
- **`sdc-build-es.sh`** - Will build the Spanish documentation (to be created)
- **`sdc-serve-es.sh`** - Will serve the Spanish documentation locally (to be created)

### Multi-Language Build Automation

You can create additional language-specific scripts following this pattern:

```bash
# For French (example)
./sdc-build-fr.sh   # Build French docs
./sdc-serve-fr.sh   # Serve French docs

# For German (example)  
./sdc-build-de.sh   # Build German docs
./sdc-serve-de.sh   # Serve German docs
```

Each language should have:
1. A `docs-{lang}/` directory with translated content
2. A `mkdocs-{lang}.yml` configuration file
3. Build and serve scripts following the naming convention
4. Theme overrides in `material/overrides-{lang}/` if needed

## Deployment

 You can deploy the site using [GitHub Pages](https://docs.github.com/en/pages) or any static hosting provider.

To deploy to GitHub Pages:

### English Version
```bash
# Deploy English documentation
mkdocs gh-deploy -f mkdocs.yml
```

### Spanish Version (Pending Translation)
```bash
# Deploy Spanish documentation (when available)
mkdocs gh-deploy -f mkdocs-es.yml
```

 ## Multi-Language Support

### Spanish Translation Status

**🚧 Spanish translation is currently pending and will be added in future releases.**

When the Spanish translation is complete, the following will be available:
- `docs-es/` directory with all Spanish content
- `mkdocs-es.yml` configuration file
- `sdc-build-es.sh` and `sdc-serve-es.sh` automation scripts
- `material/overrides-es/` theme customizations for Spanish

### Visitor Language Redirection (TODO)

 This site includes a custom JavaScript snippet (in `material/overrides/main.html`) to detect the visitor’s browser language. If the language code starts with `es`, the visitor is automatically redirected to the Spanish version of the current page (prefixing the path with `/es`). Otherwise, the site loads normally.

 Example snippet:
 ```html
 <script>
 (function() {
   var path = window.location.pathname;
   if (path.indexOf('/es') === 0) return;
   var userLang = (navigator.language || navigator.userLanguage || '').toLowerCase();
   if (userLang.indexOf('es') === 0) {
     window.location.replace('/es' + path);
   }
 })();
 </script>
 ```

 ## Project Structure

```
.
├── docs-en/                           # English documentation content
│   ├── index.md                      # Main documentation index
│   ├── manifesto.md                  # Project manifesto
│   ├── about.md                      # About the project
│   ├── agents/                       # AI agents documentation
│   │   ├── index.md                 # Agents overview
│   │   ├── requirements_analyzer_agent.md
│   │   ├── architecture_agent.md
│   │   ├── implementation_agent.md
│   │   ├── test_agent.md
│   │   ├── security_agent.md
│   │   └── ... (16 total agents)
│   ├── human-governed-ai-development-playbook/
│   │   ├── index.md                 # Playbook main page
│   │   ├── accelerate-software-development-ai-human-governance.md
│   │   ├── boost-productivity-human-governed-ai-development-flows.md
│   │   ├── enterprise-ready-responsible-ai-governance-compliance-framework.md
│   │   ├── role-based-ai-development-guides-optimize-human-governance.md
│   │   ├── scalable-ai-development-strategies-any-team-size.md
│   │   └── universal-human-governed-ai-development-playbook-configuration-template-quickstart-guide.md
│   ├── assets/images/               # Documentation images
│   └── blog/                        # Blog posts
├── docs-es/                          # Spanish documentation (pending translation)
├── material/                         # Material theme customizations
│   └── overrides-en/                # English theme overrides
│       ├── assets/                  # Custom assets
│       ├── home.html               # Custom home page
│       ├── main.html               # Main template
│       └── hooks/                  # MkDocs hooks
├── mkdocs.yml                    # English MkDocs configuration
├── mkdocs-es.yml                    # Spanish MkDocs configuration (Alternative)
├── requirements.txt                  # Python dependencies
├── sdc-build.sh                     # Build automation script (English)
├── sdc-serve.sh                     # Serve automation script (English)
├── sdc-build-es.sh                  # Build automation script (Spanish, pending)
├── sdc-serve-es.sh                  # Serve automation script (Spanish, pending)
├── LICENSE.md                       # Creative Commons Attribution 4.0 License
├── README.md                        # Main project README
├── DONT-README.md                   # Development documentation
└── .gitignore                       # Git ignore patterns
```

 ## Contributing

Contributions, issues, and feature requests are welcome! Please check the [issues page](https://github.com/slackdevs/human-governed-ai-development-playbook/issues) for existing issues or create a new one.

 1. Fork the repository.
 2. Create a new branch: `git checkout -b feature/YourFeatureName`
 3. Make your changes and commit them: `git commit -m 'Add some feature'`
 4. Push to the branch: `git push origin feature/YourFeatureName`
 5. Open a pull request.

## License

Copyright © 2024 - 2025 Sebastian Larrauri

 This documentation and content are licensed under the Creative Commons Attribution 4.0 International License (CC BY 4.0).

 You are free to:

 - Share — copy and redistribute the material in any medium or format
 - Adapt — remix, transform, and build upon the material for any purpose, even commercially

 Under the following terms:

 - Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made
 - No additional restrictions — You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits

 See the [LICENSE](LICENSE.md) file for the full legal text or visit https://creativecommons.org/licenses/by/4.0/.