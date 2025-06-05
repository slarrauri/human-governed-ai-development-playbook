# Aumenta la Productividad con Flujos de Desarrollo de IA Gobernados por Humanos

## Descripción general

En SlackDevs, el software es desarrollado por agentes de IA que siguen un Ciclo de Vida de Desarrollo de Software estructurado (Manual de Desarrollo de IA Gobernado por Humanos). Este ciclo es modular, trazable y está diseñado para **la gobernanza humana en cada paso**.

El flujo predeterminado es:

```
PROMPT_REFINE → REQUIREMENTS → ROUTER → ARCHITECT → CODER → TESTER → REVIEW → PR_MANAGER → MAINTENANCE
```

Cada fase es gestionada por un agente de IA especializado, y los resultados se transmiten a lo largo de la cadena en ramas aisladas para mantener la trazabilidad.

---

## ¿Qué es el Control de Flujo?

El control de flujo te permite definir **puntos de control** en esta cadena: momentos específicos donde la IA debe pausar y **esperar la validación humana** antes de continuar. Esto permite a los equipos:

- Aprender de manera interactiva del proceso de IA
- Inyectar conocimientos humanos o experiencia de dominio
- Prevenir resultados no deseados de forma temprana
- Mantener el cumplimiento en entornos regulados

---

## Configuración de Puntos de Control Personalizados

Puedes configurar puntos de control mediante un archivo YAML sencillo:

```yaml
# .slackdevs/flow.yaml
checkpoints:
  - after: 00_PROMPT_REFINE
  - after: 03_ARCHITECT
  - after: 05_TEST_CODER
```

Cada clave `after:` define una pausa después de que el agente especificado complete su tarea.

Durante la ejecución, la CLI mostrará:

```
Continue after 03_ARCHITECT? [y/n]
```

---

## Ejemplos

| Caso de uso                    | Puntos de control recomendados                   |
|--------------------------------|--------------------------------------------------|
| Aprendizaje o mentoría         | Después de cada fase                             |
| Equipos empresariales o regulados | Después de ARCHITECT, TEST_CODER, BRANCH_PR   |
| Desarrollo rápido en solitario | Solo en PR (predeterminado)                      |

---

## Por qué es importante

- Impone el **humano en el ciclo** por diseño
- Habilita flujos de trabajo educativos y colaborativos
- Proporciona válvulas de seguridad en el desarrollo autónomo
- Se adapta a cualquier nivel de habilidad o perfil de riesgo del proyecto

> "SlackDevs no se trata solo de automatizar el trabajo, sino de dar a los humanos el control sobre esa automatización."
