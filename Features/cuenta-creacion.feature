#language:es
Característica: Creación de cuenta

A fin de que un usuario nuevo pueda manejar plata dentro de este sistema
Siendo un administrador
Yo quiero crear una cuenta nueva

Escenario: creación de cuenta con identidad, alias y descripción
Dado que quiero dar un alta de cuenta
Cuando completo los campos alias, identidad (33a5b997-2126-4faf-bbc9-265bfd19c75f) y descripción
Entonces se visualizan los datos de: idcarga, fecha, idmovimiento, descripción y monto


Escenario: creación de cuenta por identidad con guid invalido, allias y descripción
Dado que quiero realizar un alta de cuenta
Cuando ingreso en el campo identidad un id con menos caracteres (por ejemplo 33a5b997-2126-4faf-bbc9-265bfd19c75)
Entonces se visualiza un status code 400, error "bad request" mensaje "invalid request params input"

Escenario: creación de cuenta por identidad con un id que no existe en la base de datos, alias y descripción
Dado que quiero realizar un alta de cuenta
Cuando completo los campos alias, identidad (33a5b997-2126-4faf-bbc9-265bfd19c75g) y descripción
Entonces se visualiza un status code 404, error "Not found" mensaje "Not found"