# Plantilla Universal de Configuración del Human Governed AI Development Playbook — Guía Rápida

Esta plantilla de configuración permite que el Human Governed AI Development Playbook funcione con cualquier lenguaje de programación, framework y tipo de proyecto. Copia esta plantilla en `.sdc/config.yaml` en la raíz de tu proyecto y personalízala para tu stack tecnológico específico.

## Plantilla de Configuración Completa

```yaml
# Configuración Universal de Proyecto para Human Governed AI Development Playbook
# Copia esto en: .sdc/config.yaml

project:
  name: "my-project"
  type: "web-application"        # web-application | mobile-app | backend-service | desktop-app | library
  language: "typescript"        # Lenguaje de programación principal
  framework: "react"            # Framework/plataforma principal
  architecture: "component-based" # Patrón de arquitectura

# Configuración del Stack Tecnológico
technology:
  runtime: "node"               # node | python | java | dotnet | go | rust | dart
  package_manager: "npm"        # npm | yarn | pip | maven | gradle | cargo | pub
  build_tool: "vite"           # vite | webpack | rollup | maven | gradle | cargo | flutter
  
  # Frameworks de pruebas
  testing:
    unit: "jest"                # jest | vitest | pytest | junit | nunit | go-test
    integration: "cypress"      # cypress | playwright | selenium | postman
    e2e: "playwright"          # playwright | cypress | detox | selenium
  
  # Herramientas de calidad de código  
  quality:
    linter: "eslint"            # eslint | pylint | checkstyle | golint | dart-analyze
    formatter: "prettier"       # prettier | black | google-java-format | gofmt
    type_checker: "typescript"  # typescript | mypy | flow | none

# Configuración de la Estructura del Proyecto
structure:
  source_dir: "src"
  
  # Estructura de Frontend/UI
  components_dir: "src/components"     # React/Vue components | Flutter widgets
  pages_dir: "src/pages"              # Page components | Screen widgets
  hooks_dir: "src/hooks"              # React hooks | Custom hooks
  
  # Estructura de lógica de negocio
  services_dir: "src/services"        # Business services | API clients
  utils_dir: "src/utils"              # Utility functions
  types_dir: "src/types"              # Type definitions
  
  # Estructura de Backend (si aplica)
  controllers_dir: "src/controllers"  # API controllers
  models_dir: "src/models"            # Data models
  repositories_dir: "src/repositories" # Data access
  
  # Estructura de Pruebas
  tests_dir: "tests"                  # Test files location
  test_utils_dir: "tests/utils"      # Test utilities
  fixtures_dir: "tests/fixtures"     # Test data

# Configuración de la Arquitectura
architecture:
  pattern: "clean-architecture"       # clean | layered | mvc | mvvm | component-based
  layers:                            # Architecture layers (customize based on pattern)
    - "presentation"
    - "domain" 
    - "data"
  
  # Patrones de diseño en uso
  patterns:
    dependency_injection: true
    repository_pattern: true
    factory_pattern: false
    observer_pattern: true
    command_pattern: false

# Comandos de Desarrollo
commands:
  # Desarrollo
  dev: "npm run dev"
  build: "npm run build"
  start: "npm start"
  
  # Pruebas
  test: "npm test"
  test_unit: "npm run test:unit"
  test_integration: "npm run test:integration"
  test_e2e: "npm run test:e2e"
  test_coverage: "npm run test:coverage"
  test_watch: "npm run test:watch"
  
  # Calidad de código
  lint: "npm run lint"
  lint_fix: "npm run lint:fix"
  format: "npm run format"
  type_check: "npm run type-check"
  
  # Dependencias
  install: "npm install"
  update: "npm update"
  audit: "npm audit"

# Estándares de Codificación
standards:
  style_guide: "docs/style-guide.md"  # Path to project style guide
  naming_conventions:
    files: "kebab-case"               # kebab-case | camelCase | PascalCase | snake_case
    functions: "camelCase"            # camelCase | snake_case | PascalCase
    classes: "PascalCase"             # PascalCase | camelCase | snake_case
    constants: "UPPER_SNAKE_CASE"    # UPPER_SNAKE_CASE | camelCase
  
  # Principios de organización del código
  principles:
    - "single-responsibility"
    - "dependency-inversion"
    - "dry"
    - "kiss"

# Configuración de Gobernanza Humana
governance:
  # Configuración de puntos de control para validación humana
  checkpoints:
    after_analysis: false            # Pause after requirements analysis
    after_design: true              # Pause after architecture design
    after_implementation: false     # Pause after code implementation
    after_testing: true            # Pause after test creation
    before_pr: true               # Always pause before creating PR
  
  # Roles de aprobación
  approvers:
    technical: ["senior-dev", "tech-lead"]
    product: ["product-manager"]
    design: ["ux-designer"]

# Configuración de Documentación  
documentation:
  auto_generate: true              # Auto-generate documentation
  formats: ["markdown", "jsdoc"]   # markdown | jsdoc | sphinx | javadoc
  locations:
    api_docs: "docs/api"
    user_docs: "docs/user-guide"
    technical_docs: "docs/technical"

# Configuración de Integración
integrations:
  version_control: "git"           # git | svn
  ci_cd: "github-actions"         # github-actions | gitlab-ci | jenkins | azure-devops
  deployment: "vercel"            # vercel | netlify | aws | azure | gcp
  monitoring: "sentry"            # sentry | datadog | newrelic | none

# Configuración del Entorno
environments:
  development:
    database_url: "sqlite:///dev.db"
    api_base_url: "http://localhost:3000"
  
  testing:
    database_url: "sqlite:///test.db"
    api_base_url: "http://localhost:3001"
  
  production:
    database_url: "${DATABASE_URL}"
    api_base_url: "${API_BASE_URL}"
```

## Ejemplos Específicos de Tecnología

### Aplicación Web React/TypeScript

```yaml
project:
  name: "react-dashboard"
  type: "web-application"
  language: "typescript"
  framework: "react"
  architecture: "component-based"

technology:
  runtime: "node"
  package_manager: "npm"
  build_tool: "vite"
  testing:
    unit: "jest"
    integration: "cypress"
    e2e: "playwright"

structure:
  source_dir: "src"
  components_dir: "src/components"
  pages_dir: "src/pages"
  hooks_dir: "src/hooks"
  services_dir: "src/services"
  types_dir: "src/types"

commands:
  dev: "npm run dev"
  build: "npm run build"
  test: "npm test"
  lint: "npm run lint"
```

### Aplicación Móvil Flutter

```yaml
project:
  name: "flutter-ecommerce"
  type: "mobile-app"
  language: "dart"
  framework: "flutter"
  architecture: "clean-architecture"

technology:
  runtime: "dart"
  package_manager: "pub"
  build_tool: "flutter"
  testing:
    unit: "flutter_test"
    integration: "integration_test"
    e2e: "integration_test"

structure:
  source_dir: "lib"
  components_dir: "lib/presentation/widgets"
  pages_dir: "lib/presentation/pages"
  services_dir: "lib/domain/usecases"
  models_dir: "lib/domain/entities"

commands:
  dev: "flutter run"
  build: "flutter build"
  test: "flutter test"
  lint: "dart analyze"
```

### Servicio Backend Python/Django

```yaml
project:
  name: "django-api"
  type: "backend-service"
  language: "python"
  framework: "django"
  architecture: "layered"

technology:
  runtime: "python"
  package_manager: "pip"
  build_tool: "setuptools"
  testing:
    unit: "pytest"
    integration: "pytest"
    e2e: "postman"

structure:
  source_dir: "src"
  controllers_dir: "src/api/views"
  models_dir: "src/api/models"
  services_dir: "src/services"
  repositories_dir: "src/repositories"

commands:
  dev: "python manage.py runserver"
  test: "pytest"
  lint: "pylint src/"
  format: "black src/"
```

### Aplicación Empresarial Java/Spring Boot

```yaml
project:
  name: "spring-microservice"
  type: "backend-service"
  language: "java"
  framework: "spring-boot"
  architecture: "clean-architecture"

technology:
  runtime: "java"
  package_manager: "maven"
  build_tool: "maven"
  testing:
    unit: "junit"
    integration: "spring-boot-test"
    e2e: "rest-assured"

structure:
  source_dir: "src/main/java"
  controllers_dir: "src/main/java/com/example/controllers"
  services_dir: "src/main/java/com/example/services"
  repositories_dir: "src/main/java/com/example/repositories"
  models_dir: "src/main/java/com/example/models"

commands:
  dev: "mvn spring-boot:run"
  build: "mvn clean package"
  test: "mvn test"
  lint: "mvn checkstyle:check"
```

## Validación de la Configuración

Los agentes del Human Governed AI Development Playbook validarán la configuración y proporcionarán mensajes de error útiles si faltan campos obligatorios o se detectan combinaciones incompatibles.

### Campos Obligatorios
- `project.name`
- `project.type`  
- `project.language`
- `structure.source_dir`
- `commands.test`

### Reglas de Validación
- `technology.testing.unit` debe ser compatible con `project.language`
- Las rutas `structure.*_dir` deben ser rutas relativas válidas
- Los comandos `commands.*` deben ser comandos de shell válidos para la plataforma
- `architecture.pattern` debe estar soportado para el `project.type`

## Descubrimiento de Configuración

Si no se encuentra `.sdc/config.yaml`, los agentes intentarán detectar la configuración automáticamente desde:

1. **Archivos de paquetes**: `package.json`, `requirements.txt`, `pom.xml`, `pubspec.yaml`
2. **Estructura de archivos**: Analizar la disposición de carpetas y extensiones de archivos
3. **Archivos de framework**: `angular.json`, `next.config.js`, etc.
4. **Archivos de CI/CD**: `.github/workflows`, `.gitlab-ci.yml`

## Extensión de la Configuración

Los proyectos pueden extender la configuración base con secciones personalizadas:

```yaml
# Configuración personalizada específica del proyecto
custom:
  api_version: "v2"
  feature_flags:
    experimental_ui: false
    beta_features: true
  
  deployment:
    staging_url: "https://staging.example.com"
    production_url: "https://app.example.com"
```

Este sistema universal de configuración permite que el Human Governed AI Development Playbook se adapte a cualquier stack tecnológico, manteniendo la consistencia en el flujo de trabajo de desarrollo y el proceso de gobernanza humana.