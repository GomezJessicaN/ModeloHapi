#language:es
Característica: Lectura de entidad

A fin de verificar que la información que esta cargada en la entidad corresponda con el usuario que la va a usar
Siendo un administrador
Yo quiero obtener los datos de una entidad

Escenario: lectura de entidad por id
Dado que yo tengo información de la persona y quiero verificar que existen en la base de datos
Cuando que completo el campo identidad con un id correcto (por ejemplo 33a5b997-2126-4faf-bbc9-265bfd19c75f)
Entonces se visualizan los datos de: identidad, descripción, fecha

Escenario: lectura de entidad por id guid invalido
Dado que yo tengo información de la persona y quiero verificar que existen en la base de datos
Cuando que ingreso en el campo identidad un id con menos caracteres (por ejemplo 33a5b997-2126-4faf-bbc9-265bfd19c7)
Entonces se visualiza un status code 400, error "bad request" mensaje "invalid request params input"

Escenario: lectura de entidad por id que no existe en la base de datos
Dado que yo tengo información de la persona y quiero verificar que existen en la base de datos
Cuando que ingreso en el campo identidad un id con menos caracteres (por ejemplo 33a5b997-2126-4faf-bbc9-265bfd19c75g)
Entonces se visualiza un status code 404, error "Not found" mensaje "Not found"