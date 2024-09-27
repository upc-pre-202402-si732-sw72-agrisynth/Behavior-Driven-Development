
Feature: Detalles  y servicios de la empresa

    Como usuario
    Quiero visualizar los detalles y servicios de la empresa
    Para conocer de que manera se puede utilizar la aplicación

Scenario: Traslado a la sección servicios

    Given que el usuario se encuentra en la landing page
    When el usuario seleccione "Servicios" en la barra de navegación
    Then se trasladará al usuario a la seccion de detalles de servicios

    Example: Accion del usuario
        | Sección seleccionada |
        | Servicios |
    Example: Respuesta de landing page
        | Seccion mostrada |
        | Servicios de la empresa |