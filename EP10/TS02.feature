Feature: Compra de una suscripción

    Como desarrollador
    Quiero un método en el que el usuario puede comprar una suscripción de paga a 
        través de la aplicación
    Para facilitarle el acceso a las funcionalidades de pago de la aplicación

Scenario: Compra de plan de suscripción exitosa
Dado que el ENDPOINT/usuario está disponible
Cuando una <solicitud> POST sea enviada al presionar 
    el botón <Suscribirse> del entorno <Plan Asesor> o <Plan Corporativo>
Entonces se recibe una <respuesta> con el status 200
Y el <mensaje> “Compra realizada satisfactoriamente” es mostrado
Y el sistema asigna al usuario el plan elegido

Examples: Datos de entrada
    | solicitud | Suscribirse | Plan Asesor | Plan Corporativo|
    | POST/SUSCRIPCION_USUARIO | Suscribirme ahora  | Plan Asesor  | Plan Corporativo |

Examples: Datos de salida
    | respuesta | mensaje |
    | OK  | Compra realizada satisfactoriamente  |

Scenario: Compra de plan sin créditos
Dado que el ENDPOINT/usuario está disponible
Cuando una <solicitud> POST sea enviada al presionar el botón <Suscribirse> 
    del entorno <Plan Asesor> o <Plan Corporativo>
Y el usuario no cuenta con ningún <credito>
Entonces se recibe una <respuesta> con el status 400
Y el <mensaje> “Faltan créditos” es mostrado

Examples: Datos de entrada
    | solicitud | Suscribirse | Plan Asesor | Plan Corporativo | credito |
    | POST/SUSCRIPCION_USUARIO | Suscribirme ahora  | Plan Asesor  | Plan Corporativo | $100 |

Examples: Datos de salida
    | respuesta | mensaje |
    | INVALID INPUT  | Faltan Créditos  |