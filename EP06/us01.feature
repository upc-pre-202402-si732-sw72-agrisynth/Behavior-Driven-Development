# Feature: Creación de grupo de Trabajo
## EP06 / US01
Como usuario,
Quiero poder crear un grupo de trabajo,
Para compartir con mis compañeros de trabajo los recursos utilizados y sus estadísticas.

### Scenario 1: Ingreso al entorno "Grupos"
  Given: Dado que el usuario se encuentra en la página principal
  When: Cuando el usuario presione el botón 'Grupos'
  Then: Entonces se redirige al usuario al entorno 'Grupos'

### Scenario 2: Ingreso al entorno "Crear Grupo"
  Given: Dado que el usuario se encuentra en el entorno 'Grupos'
  When: Cuando el usuario presione el botón 'Crear Grupo'
  Then: Entonces se redirige al usuario al entorno 'Crear Grupo'

### Scenario 3: Creación de grupo
  Given: Dado que el usuario se encuentra en el entorno 'Crear Grupo'
  When: Cuando el usuario ingrese el nombre del grupo
  Then:
    - Se muestra un mensaje de confirmación, indicando que el grupo fue creado satisfactoriamente
    - Se muestra un enlace de invitación para agregar a otras personas al grupo
  Examples:
    | nombre_del_grupo |
    | Marketing Team   |
    | Proyecto Sigma   |

### Scenario 4: Creación de grupo con un nombre inválido o sin nombre
  Given: Dado que el usuario se encuentra en el entorno 'Crear Grupo'
  When: Cuando el usuario ingrese un nombre inválido o deje en blanco el campo
  Then: Entonces se muestra un mensaje de error, indicando que el nombre no es válido
  Examples:
    | nombre_del_grupo | error_esperado                      |
    | ""               | 'El nombre del grupo no puede estar vacío' |
    | "123"            | 'El nombre del grupo no puede ser solo números' |
    | "@$!"            | 'El nombre del grupo contiene caracteres no válidos' |
