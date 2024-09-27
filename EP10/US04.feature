
EP10: Landing Page
Como usuario quiero visualizar una landing page para conocer los detalles de la empresa y la aplicación
US04:Contacto con un asesor


Feature: Contacto con un asesor
    Como usuario
    Quiero poder contactarme con un asesor desde la landing page
    Para poder resolver mis dudas acerca de la aplicación y sus funcionalidades

Scenario: Traslado a la sección de contacto
Given que el usuario se encuentra en la landing page
When el usuario seleccione <Contacto> en la Barra de navegación
Then se trasladará al usuario a la sección de contacto
Example: Entrada de datos
| Ubicación actual || Landing page |
| Acción           || Seleccionar "Contacto" en la barra de navegación.  |

Example: Salida de datos
|Ubicación final||Sección "Contacto"|
|Elementos||Formulario de contacto con campos "Nombre", "Email" y "Mensaje", y un botón para enviar el mensaje|

Scenario: Contacto satisfactorio
Given que el usuario se encuentra en la sección <Contacto>
When el usuario rellene los campos necesarios
And de clic en <Contact>
Then se enviará un correo a uno de los aseThenres de la empresa
Example: Entrada de datoss
|Ubicación||Sección "Contacto"|
|Acción||Completar el formulario de contacto con información válida|
|Acción||Hacer clic en el botón "Contactar"|

Example: Salida de datos
|Correo electrónico||Enviado a los asesores con la información del formulario|
|Mensaje||éxitoso al usuario|

Scenario: Contacto con datos inválidos
Given que el usuario se encuentra en la sección <Contacto>
When el usuario rellene los <campos necesarios>
 uno de los campos tenga datos inválidos
And  uno de los campos tenga datos invalido y de clic en <Contact>
Then aparecerá un mensaje de error, hay valores inválidos
Example: Entrada de datoss
|Ubicación||Sección "Contacto"|
|Acción||Completar el formulario de contacto con información parcialmente válida|
|Acción||Hacer clic en el botón "Contactar"|

Example: Salida de datos
|Mensaje||De error al usuario indicando el campo "Email" inválido|
|No se envía correo electrónico|

Scenario: Contacto con campos en blanco
Given que el usuario se encuentra en la sección <Contacto>
When el usuario rellene solo algunos de los campos necesarios
And de clic en <Contact>
Then aparecerá un mensaje de error, indicando que deben completarse todos los campos
Example: Entrada de datos
|Ubicación||Sección "Contacto"|
|Acción||Completar el formulario de contacto con campos en blanco|
|Acción||Hacer clic en el botón "Contactar"|
Example: Salida de datos
|Mensaje||De error al usuario indicando que debe completar todos los campos|
|No se envía correo electrónico|

