#language:es
Característica: Lectura del movimiento

A fin de saber como llegué al saldo actual en mi cuenta
Siendo un dueño de la cuenta
Yo quiero consultar movimientos con filtros 

Escenario: lectura de movimiento por filtros idcuenta, fechadesde y fechahasta
Dado que tengo el periodo que quiero ver 
Y el id de mi cuenta
Cuando completo los campos fechadesde, fechahasta y idcuenta correctos
Entonces obtengo todos los movimientos realizados entre las fechas ingresadas mostrando los datos de idmovimiento, monto, descripción, idcuenta, fecha


Escenario: lectura de movimiento por filtros idcuenta con formato Guid invalido, fechadesde y fechahasta
Dado que tengo el periodo que quiero ver 
Y el id de mi cuenta
Cuando completo los campos fechadesde, fechahasta y idcuenta completando el campo idcuenta con menos caracteres
Entonces se visualiza el response code 400
Y en el response body un status code 400, error "bad request" mensaje "invalid request params input"


Escenario: lectura de movimiento por filtros idcuenta con un idcuenta que no existe, fechadesde y fechahasta
Dado que tengo el periodo que quiero ver 
Y el id de mi cuenta
Cuando completo los campos fechadesde, fechahasta y idcuenta completando el campo idcuenta que no existe
Entonces se visualiza el response code 404
Y en el response body un status code 404, error "not found" mensaje "not found"