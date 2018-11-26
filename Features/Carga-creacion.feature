#language:es
Característica: Creación de carga

A fin de crear una carga nueva
Siendo un dueño de cuenta
Yo quiero poder registrar el movimiento de la carga en mi cuenta 

Escenario: creación de carga por idcuenta y monto
Dado que quiero realizar una carga en mi cuenta
Cuando completo el campo idcarga con un id correcto (por ejemplo 432347c4-9179-47d0-907a-1137bc5090c2) y monto 500
Entonces se visualizan los datos de: idcarga, fecha, idmovimiento, descripción y monto


Escenario: creación de carga por idcuenta con guid invalido
Dado que quiero realizar una carga en mi cuenta
Cuando ingreso en el campo idcarga un id con menos caracteres (por ejemplo 432347c4-9179-47d0-907a-1137bc5090)
Entonces se visualiza un status code 400, error "bad request" mensaje "invalid request params input"

Escenario: creación de carga por idcuenta erroneo
Dado que quiero realizar una carga en mi cuenta
Cuando ingreso en el campo idcarga un id con menos caracteres (por ejemplo 432347c4-9179-47d0-907a-1137bc5090c1)
Entonces se visualiza un status code 404, error "Not found" mensaje "Not found"