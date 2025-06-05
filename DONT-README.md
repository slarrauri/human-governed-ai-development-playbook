 # AI SDLC

 Part of the [Slackdevs](https://slackdevs.com) initiative.

 **We don’t automate developers — we multiply them.**

 AI-driven Software Development Life Cycle guidelines, best practices, and resources for building responsible and robust AI-powered applications.

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

 This repository contains the source for the AI SDLC documentation and website. It is built with [MkDocs](https://www.mkdocs.org/) and the [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) theme.

 ## Prerequisites

 - Python 3.8 or newer
 - pip

 ## Installation

 1. Clone the repository:

    ```bash
    git clone https://github.com/slackdevs/ai-sdlc-hg.git
    cd ai-sdlc
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

 ```bash
 mkdocs serve
 ```

 Browse to `http://127.0.0.1:8000` to view the site.

 ## Building the Site

 To build the static site:

 ```bash
 mkdocs build
 ```

 The generated files will be placed in the `site/` directory.

 ## Deployment

 You can deploy the site using [GitHub Pages](https://docs.github.com/en/pages) or any static hosting provider.

 To deploy to GitHub Pages:

 ```bash
 mkdocs gh-deploy
 ```

 ## Visitor Language Redirection (TODO)

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
 ├── docs-en              # English documentation content
 ├── material             # Material theme customizations
 ├── mkdocs.yml           # MkDocs configuration
 ├── requirements.txt     # Python dependencies
 └── .gitignore           # Files and directories to ignore
 ```

 ## Contributing

 Contributions, issues, and feature requests are welcome! Please check the [issues page](https://github.com/slackdevs/ai-sdlc/issues) for existing issues or create a new one.

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