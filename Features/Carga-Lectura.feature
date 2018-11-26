#language:es
Característica: Lectura de carga

A fin de verificar que la plata que ingresé al sistema coincide con la información que tengo en mi resumen de tarjeta de crédito
Siendo un dueño de la cuenta
Yo quiero consultar la carga realizada

Escenario: lectura de carga por id
Dado que acabo de ingresar una carga y tengo un id de carga
Cuando completo el campo idcarga con un id correcto (por ejemplo 432347c4-9179-47d0-907a-1137bc5090c2)
Entonces visualizo  los datos de: idcarga, fecha, idmovimiento, descripción y monto

Escenario: lectura de carga con id de carga con menos caracteres
Dado que acabo de ingresar una carga y tengo un id de carga
Cuando completo el campo idcarga un id con menos caracteres (por ejemplo 432347c4-9179-47d0-907a-1137bc5090)
Entonces se visualiza en el response body un status code 400, error "bad request" mensaje "invalid request params input"

Escenario: lectura de carga por id erroneo
Dado que acabo de ingresar una carga y tengo un id de carga
Cuando completo el campo idcarga un id que no existe
Entonces se visualiza en el response body un status code 404, error "not found" mensaje "not found"