# Feature: Visualizar los integrantes del grupo
## EP06 / US03
Como usuario,
Quiero visualizar a todos los integrantes que componen el grupo,
Para verificar que todas las personas que conforman el grupo estén dentro del grupo de trabajo.

### Scenario 1: Ingresar al entorno "Integrantes de Trabajo"
  Given: Dado que el usuario se encuentra en el entorno 'Grupo de Trabajo' del grupo seleccionado
  When: Cuando el usuario seleccione el botón 'Integrantes de Trabajo'
  Then: Entonces aparecerá la ventana 'Integrantes de Trabajo', indicando todos los integrantes actuales del grupo
  Examples:
    | grupo_seleccionado    |
    | Desarrollo de Software|
    | Marketing Digital     |

### Scenario 2: Ingreso a la ventana "Opciones de Integrante de Grupo"
  Given: Dado que el usuario se encuentra en la ventana 'Integrantes de Trabajo'
  When: Cuando el usuario seleccione a un integrante
  Then: Entonces aparecerá la ventana 'Opciones de Integrante de Grupo', indicando las opciones 'Ver Perfil', 'Permisos', 'Eliminar' y 'Bloquear'
  Examples:
    | integrante_seleccionado |
    | María Pérez             |
    | Juan Gómez              |

### Scenario 3: Ver perfil de integrante del grupo
  Given: Dado que el usuario se encuentra en la ventana 'Opciones de Integrante de Grupo'
  When: Cuando el usuario seleccione el botón 'Ver Perfil'
  Then: Entonces aparecerá la ventana 'Perfil de Integrante' que mostrará el perfil del integrante seleccionado
  Examples:
    | integrante_seleccionado | perfil_mostrado         |
    | María Pérez             | 'Perfil de María Pérez' |
    | Juan Gómez              | 'Perfil de Juan Gómez'  |
