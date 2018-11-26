#language:es
Característica: Creación de entidad

A fin de crear una entidad
Siendo un administrador
Yo quiero crear una nueva entidad

Escenario: creación de entidad por alias y descripción
Dado que tengo los datos de la persona que quiere registrar una nueva entidad
Cuando completo el campo idcarga con un id correcto (por ejemplo 432347c4-9179-47d0-907a-1137bc5090c2) y monto 500
Entonces se visualizan los datos de: idcarga, fecha, idmovimiento, descripción y monto


Escenario: creación de entidad por identidad con guid invalido, alias y descripción
Dado que tengo los datos de la persona que quiere registrar una nueva entidad
Cuando ingreso en el campo idcarga un id con menos caracteres (por ejemplo 432347c4-9179-47d0-907a-1137bc5090)
Entonces se visualiza un status code 400, error "bad request" mensaje "invalid request params input"

Escenario: creación de carga por identidad que no existe 
Dado que tengo los datos de la persona que quiere registrar una nueva entidad
Cuando ingreso en el campo idcarga un id con menos caracteres (por ejemplo 432347c4-9179-47d0-907a-1137bc5090c1)
Entonces se visualiza un status code 404, error "Not found" mensaje "Not found"