
Feature: Logo y descripción de la empresa

    Como usuario
    Quiero visualizar el logo y descripción de la empresa
    Para verificar que estoy en la landing page oficial de la empresa 

Scenario: Visualización del logo

    Given que el usuario se encuentra en la landing page
    When el usuario selecione "Inicio" en la barra de la navegación
    Then se trasladará al usuario a la sección del logo y descripción de la empresa

    Example: Accion del usuario
        | Sección seleccionada |
        | Inicio |
    Example: Respuesta de landing page
        | Seccion mostrada |
        | Descripción de la empresa |
