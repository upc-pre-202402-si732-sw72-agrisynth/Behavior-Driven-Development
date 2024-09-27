# Feature: Agregar personas al grupo
## EP06 / US02
Como usuario,
Quiero agregar a otras personas a un grupo,
Para colaborar bajo un mismo paradigma del trabajo.

### Scenario 1: Ingresar al entorno "Grupo de Trabajo"
  Given: Dado que el usuario se encuentra en entorno 'Grupos'
  When: Cuando el usuario seleccione un grupo de trabajo
  Then: Entonces se redirige al usuario al entorno 'Grupo de Trabajo' con el nombre del grupo seleccionado
  Examples:
    | grupo_seleccionado |
    | Equipo de Desarrollo |
    | Recursos Humanos    |

### Scenario 2: Invitar a un integrante al grupo
  Given: Dado que el usuario se encuentra en el entorno 'Grupo de Trabajo'
  When: Cuando el usuario seleccione el botón 'Copiar enlace de grupo'
  Then: Entonces se copiará el enlace del grupo al portapapeles

### Scenario 3: Incorporación de un integrante al grupo
  Given: Dado que el usuario ha enviado el enlace al integrante que se quiere incorporar al grupo
  When: Cuando el integrante entre al enlace
  Then:
    - El integrante será agregado al grupo instantáneamente
    - Se mostrará una notificación, indicando que un nuevo integrante ha sido agregado al grupo
  Examples:
    | enlace                                      | notificacion_esperada                 |
    | http://grupo.com/equipo-desarrollo          | 'Nuevo integrante agregado al grupo'  |
    | http://grupo.com/recursos-humanos           | 'Nuevo integrante agregado al grupo'  |
