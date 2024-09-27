Feature: Implementación de un Footer
Como usuario
Quiero visualizar un Footer al final de la página
Para ver las redes sociales asociadas a la empresa

Scenario: 
Given que el usuario se encuentra en la landing page
When el usuario se dirija al final de la landing page
Then el usuario visualizará las redes sociales asociadas a la empresa


Examples: Datos de entrada
    | Acción | Ubicación en la pagina |
    | Desplazamiento  | Final de la landing page |

Examples: Datos de salida
    | Red social | Icono Visible | 
    | Facebook  | Sí  | 
    | Instagram  | Sí  |
    | Twitter  | Sí  |

Scenario: 
Given que el usuario se encuentra en el footer
When el usuario seleccione una de íconos de las redes sociales que aparecen la sección del footer
Then el sistema redirigira al usuario a la red social indicada.

Examples: Datos de entrada
    | Red Social | Acción | 
    | Facebook  | Seleccionar  | 
    | Instagram  | Seleccionar  |
    | Twitter  | Seleccionar  |

Examples: Datos de salida
    | Red Social | URL Espereda | 
    | Facebook  | https://www.facebook.com/  |
    | Instagram  | https://www.instagram.com/  |
    | Twitter  | https://twitter.com/  |