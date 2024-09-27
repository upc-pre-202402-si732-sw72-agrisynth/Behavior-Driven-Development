
Feature: Implementacion de barra de navegación

    Como usuario
    Quiero tener la opción de atravesar todas las secciones de la landing page  a través de una barra de navegación
    Para facilitar el acceso a la información

Scenario: Traslado de una sección a otra 

    Dado que el usurio se encuentra en la landing page
    Cuando el usuario selecione una de las secciones de la barra de navegación
    Entonces se trasladará a la sección seleccionada

    Examples: Acción en la barra de navegación
        | Seccion | 
        | Servicios | 
        
    Examples: Respuesta de la landing page
        | Accion de la landing page  |
        | Mostrar sección de servicios  | 

Scenario: Selección de la misma sección de la landing page

    Given que el usuario se encuentra en una sección especifíca de la landing page
    When Start to type your When step here el usuario seleccione la misma sección en la barra de navegación
    Then la pantalla no se moverá a otra sección diferente

    Examples: Acción en la barra de navegación
        | Sección ubicada en landing page | Sección seleccionada |
        | Servicios | Servicios |
    Examples: Respuesta  de landing page
        | Accion de landing page |
        | Misma ubicación |