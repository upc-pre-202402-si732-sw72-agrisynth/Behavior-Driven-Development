# Feature: Establecimiento de Permisos de integrantes de grupo
## EP06 / US05
Como usuario,
Quiero limitar los permisos de los integrantes de mi grupo,
Para asegurarme que los datos de los recursos no sean cambiados repentinamente.

### Scenario 1: Ingreso a la ventana "Permisos del Integrante"
  Given: Dado que el usuario se encuentra en la ventana 'Opciones de Integrante de Grupo'
  When: Cuando el usuario seleccione "Permisos"
  Then: Entonces aparecerá la ventana 'Permisos de Integrante', indicando las opciones 'Solo Vista' y 'Vista y Editar'
  Examples:
    | integrante_seleccionado | opciones_permisos           |
    | Juan Gómez              | 'Solo Vista', 'Vista y Editar' |
    | María Pérez             | 'Solo Vista', 'Vista y Editar' |

### Scenario 2: Establecer el permiso de "Solo Vista"
  Given: Dado que el usuario se encuentra en la ventana 'Permisos de Integrante'
  When: Cuando el usuario seleccione el permiso 'Solo Vista'
  Then: 
    - Solo se le permitirá al integrante seleccionado visualizar el contenido
    - No podrá realizar ningún cambio a ninguno de los recursos ni gráficos
  Examples:
    | integrante_seleccionado | permiso_aplicado | restricciones                        |
    | Juan Gómez              | 'Solo Vista'     | 'No puede editar recursos ni gráficos' |
    | María Pérez             | 'Solo Vista'     | 'No puede editar recursos ni gráficos' |

### Scenario 3: Establecer el permiso de "Vista y Editar"
  Given: Dado que el usuario se encuentra en la ventana 'Permisos de Integrante'
  When: Cuando el usuario seleccione el permiso 'Vista y Editar'
  Then: 
    - Se le permitirá al integrante seleccionado visualizar el contenido
    - También podrá realizar cambio en cualquier momento a cualquier recurso y gráfico
  Examples:
    | integrante_seleccionado | permiso_aplicado  | privilegios                            |
    | Juan Gómez              | 'Vista y Editar'  | 'Puede editar recursos y gráficos'     |
    | María Pérez             | 'Vista y Editar'  | 'Puede editar recursos y gráficos'     |
