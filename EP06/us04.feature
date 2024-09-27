# Feature: Eliminar personas del grupo
## EP06 / US04
Como usuario,
Quiero poder eliminar a otras personas de mi grupo,
Para asegurarme que todas las personas que conforman el grupo están dentro del equipo de trabajo.

### Scenario 1: Eliminación de un integrante al grupo
  Given: Dado que el usuario se encuentra en el entorno 'Opciones de Integrante de Grupo'
  When: Cuando el usuario seleccione el botón 'Eliminar'
  Then: Entonces aparecerá una ventana de confirmación, indicando si es que se quiere eliminar o no al integrante del grupo
  Examples:
    | integrante_seleccionado | mensaje_confirmacion                   |
    | Juan Gómez              | '¿Desea eliminar a Juan Gómez del grupo?' |
    | María Pérez             | '¿Desea eliminar a María Pérez del grupo?'|

### Scenario 2: Bloqueo a un integrante del grupo
  Given: Dado que el usuario se encuentra en el entorno 'Opciones de Integrante de Grupo'
  When: Cuando el usuario seleccione el botón 'Bloquear'
  Then: Entonces aparecerá una ventana de confirmación, indicando si es que se quiere bloquear o no al integrante del grupo
  Examples:
    | integrante_seleccionado | mensaje_confirmacion                    |
    | Juan Gómez              | '¿Desea bloquear a Juan Gómez del grupo?'|
    | María Pérez             | '¿Desea bloquear a María Pérez del grupo?'|

### Scenario 3: Confirmación de Bloqueo de integrante
  Given: Dado que el usuario se encuentra en la ventana de confirmación del bloqueo
  When: Si el usuario presiona el botón 'Sí'
  Then: 
    - El usuario será bloqueado
    - No podrá ingresar al grupo de ninguna manera hasta que sea desbloqueado
  Examples:
    | integrante_seleccionado | mensaje_confirmacion                    |
    | Juan Gómez              | 'Juan Gómez ha sido bloqueado exitosamente' |
    | María Pérez             | 'María Pérez ha sido bloqueada exitosamente'|
