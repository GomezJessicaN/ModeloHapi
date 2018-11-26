#language:es
Característica: Lectura de transaccion

A fin de saber como llegué al saldo actual en mi cuenta
Siendo un dueño de una cuenta
Yo quiero consultar las transacciones 

Escenario: lectura de transaccion por id
Dado que realicé una transacción y tengo el número de la misma
Cuando completo el campo idtransaccion con un id correcto (por ejemplo 4980af12-80f2-42c9-9c99-4c13b5ff9888)
Entonces se visualizan los datos de: idtransaccion, idmovimientodesde, fecha, idmovimientohasta, descripcion, monto

Escenario: lectura de transaccion con formato guid invalido
Dado que realicé una transacción y tengo el número de la misma
Cuando ingreso en el campo idtransaccion un id con menos caracteres (por ejemplo 980af12-80f2-42c9-9c99-4c13b5ff98)
Entonces se visualiza un status code 400, error "bad request" mensaje "invalid request params input"

Escenario: lectura de transaccion por un id que no existe
Dado que realicé una transacción y tengo el número de la misma
Cuando que ingreso en el campo idtransaccion un id con menos caracteres (por ejemplo 4980af12-80f2-42c9-9c99-4c13b5ff9889)
Entonces se visualiza un status code 404, error "Not found" mensaje "Not found"