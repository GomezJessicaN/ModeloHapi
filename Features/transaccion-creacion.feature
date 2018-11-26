#language:es
Característica: Creación de transacción

A fin de hacer uso de la plata que tengo en mi cuenta
Siendo un dueño de cuenta
Yo quiero transferir plata de una cuenta mia a otra cuenta 

Escenario: creación de transacción por idcuentadesde, idcuentahasta y monto
Dado que quiero realizar una transferencia desde mi cuenta que tiene saldo
Cuando completo el campo idcuentadesde con un id correcto (por ejemplo 273414ba-6be0-4cbb-8d3f-eb049e870f87) un idcuentahasta (23d7d842-7dff-4745-b9bb-2e11749135d5),  y monto 500
Entonces se visualiza el id de la transacción 


Escenario: creación de transacción por idcuentadesde con guid invalido, idcuentahasta y monto
Dado que quiero realizar una transferencia desde mi cuenta que tiene saldo
Cuando completo el campo idcuentadesde con un id con guid invalido (por ejemplo 273414ba-6be0-4cbb-8d3f-eb049e870f8) un idcuentahasta (23d7d842-7dff-4745-b9bb-2e11749135d5),  y monto 500
Entonces se visualiza un status code 400, error "bad request" mensaje "invalid request params input"

Escenario: creación de transacción por idcuentadesde que no existe en el sistema, idcuentahasta y monto
Dado que quiero realizar una transferencia desde mi cuenta
Cuando icompleto el campo idcuentadesde con un id correcto (por ejemplo 273414ba-6be0-4cbb-8d3f-eb049e870f88) un idcuentahasta (23d7d842-7dff-4745-b9bb-2e11749135d5),  y monto 500
Entonces se visualiza un status code 404, error "Not found" mensaje "Not found"

Escenario: creación de transacción idcuentadesde con menos saldo del que quiero transferir, idcuentahasta y monto
Dado que quiero realizar una transferencia desde mi cuenta que tiene saldo menor al saldo a transferir
Cuando completo el campo idcuentadesde con un id correcto (por ejemplo 099a165c-8e7f-4a56-980f-e11e1aceda69) un idcuentahasta (23d7d842-7dff-4745-b9bb-2e11749135d5),  y monto 200
Entonces se visualiza un status code 405, not allowed