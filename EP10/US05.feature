EP10: Landing Page
Como usuario quiero visualizar una landing page para conocer los detalles de la empresa y la aplicación
US05: Descripción de Planes de suscripción

Feature: Descripción de Planes de suscripción
    Como usuario
    Quiero visualizar todos los planes de suscripción disponibles
    Para conocer cuál vale más la pena comprar

Scenario: Traslado a la sección de planes
Given que el usuario se encuentra en la landing page
When el usuario seleccione el <Planes> en la barra de navegación
Then se redirigirá al usuario a la sección de planes

Example: Entrada de datos
|Ubicación actual||Landing page|
|Acción||Seleccionar "Planes" en la barra de navegación|
Example: Salida de datos
|Ubicación||Sección de planes|
|Elementos||Lista de planes de suscripción con información y botón para suscribirse|