Feature: Traslado a una red social

    Como desarrollador
    Quiero contar con botones que redirijan al usuario a nuestras cuentas de redes sociales
    Para que el usuario pueda simplemente dar clic en uno de los botones y pueda visualizar 
        instantáneamente nuestras redes sociales

Scenario: Traslado al usuario de la red social seleccionada
Dado que el ENDPOINT/usuario está disponible
Cuando una <solicitud> GET sea enviada al seleccionar uno de los <iconos> de 
    redes sociales que aparecen la sección del footer, que son <Instagram>, 
    <Facebook> y <Linkedin>
Entonces se recibe una <respuesta> con el status 200
Y el <mensaje> “Usuario redirigido” es mostrado
Y el sistema redirige al usuario a la red social seleccionada

Examples: Datos de entrada
    | Ninguno |

Examples: Datos de salida
    | solicitud | respuesta | mensaje |
    | GET/AgriCorp/facebook/user | OK  | Compra realizada satisfactoriamente  |

Scenario: Traslado fallido
Dado que el ENDPOINT/usuario está disponible
Cuando una <solicitud> GET sea enviada al seleccionar uno de los íconos de 
    redes sociales que aparecen la sección del footer, que son <Instagram>, 
    <Facebook> y <Linkedin>
Y el servidor presenta algún problema que impide redirigir al usuario
Entonces se recibe una <respuesta> con el status 500
Y el mensaje “Error en el servidor” es mostrado

Examples: Datos de entrada
    | Ninguno |

Examples: Datos de salida
    | solicitud | respuesta | mensaje |
    | GET/AgriCorp/instagram/user | SERVER ERROR  | Error en el servidor |