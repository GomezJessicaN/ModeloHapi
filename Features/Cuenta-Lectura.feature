#language:es
Característica: Lectura de cuenta

A fin de saber los datos y el saldo que tengo en la cuenta
Siendo un dueño de la cuenta
Yo quiero consultar mis datos 

Escenario: lectura de cuenta saldo por id
Dado que quiero consultar el saldo actual de mi cuenta
Cuando completo el campo idcuenta con un id correcto (por ejemplo 704bda46-60dd-4ca6-a23f-9ed0485b62db)
Entonces se visualiza el saldo actual de la cuenta

Escenario: lectura de cuenta por id
Dado que quiero consultar los datos de mi cuenta
Cuando completo el campo idcuenta con un id correcto (por ejemplo 704bda46-60dd-4ca6-a23f-9ed0485b62db)
Entonces se visualiza el idcuenta, identidad, saldo, descripción y fecha

Escenario: lectura de cuenta saldo por id erroneo
Dado que quiero consultar el saldo actual de mi cuenta
Cuando ingreso en el campo idcuenta un id con menos caracteres (por ejemplo 704bda46-60dd-4ca6-a23f-9ed0485b62)
Entonces se visualiza un status code 400, error "bad request" mensaje "invalid request params input"


Escenario: lectura de cuenta por id erroneo
Dado que quiero consultar los datos de mi cuenta
Cuando ingreso en el campo idcuenta un id con menos caracteres (por ejemplo 704bda46-60dd-4ca6-a23f-9ed0485b62)
Entonces se visualiza un status code 400, error "bad request" mensaje "invalid request params input"

Escenario: lectura de cuenta saldo con un id que no existe
Dado que quiero consultar el saldo actual de mi cuenta
Cuando ingreso en el campo idcuenta un id con menos caracteres (por ejemplo 099a165c-8e7f-4a56-980f-e11e1aceda68)
Entonces se visualiza un status code 4004, error "Not found" mensaje "Not found"


Escenario: lectura de cuenta con un id que no existe
Dado que quiero consultar los datos de mi cuenta
Cuando ingreso en el campo idcuenta un id con menos caracteres (por ejemplo 099a165c-8e7f-4a56-980f-e11e1aceda68)
Entonces se visualiza un status code 400, error "Not found" mensaje "Not found"