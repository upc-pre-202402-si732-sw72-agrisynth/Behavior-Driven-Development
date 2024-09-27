Feature: Compra de planes de suscripción
Como usuario
Quiero poder comprar un plan de suscripción desde la landing page
Para ahorrarme el tiempo de entrar a la aplicación y tener que comprarlo desde allí


Scenario: 
Given que el usuario se encuentra en la sección <subscription-plans>
When el usuario haga clic en <Subscribe>
Then se suscribirá al usuario al <plan-de-suscripcion> elegido


Examples: Datos de entrada
    | Plan de suscripción elegido |Duración del plan| Método de pago |
    | Advisor Plan  | Anual  | Credit Card |

Examples: Datos de salida
    | Confirmación de suscripción | Nombre del plan | Fecha de inicio | Fecha de fin
    | Suscripción realizada con éxito | Advisor Plan  | 01/11/2024  | 01/11/2025|

Scenario: 
Given que el usuario se encuentra en la sección de <subscription-plans>
When el usuario haga clic en <Subscribe>
And el usuario no tenga créditos
Then aparecerá un mensaje de <error>, indicando que el usuario no puede suscribirse por una falta de créditos

Examples: Datos de entrada
    | Plan de suscripción elegido |Duración del plan| Método de pago |
    | Advisor Plan  | Anual  | Credit Card |

Examples: Datos de salida
    | Mensaje de error | Código de error | 
    | Error: No tiene suficientes créditos para suscribirse  | ERR102  | 
