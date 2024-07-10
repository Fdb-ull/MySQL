# Bases de datos

## Concepto
Las bases de datos se utilizan para almacenar informacion, la informacion se almacena en tablas, relacionales o no relacionales. Las bases de datos sirven para representar datos y a su vez, objetos de las bases de datos.
### Bases de datos relacionales
los datos se enuentran almacenados en diferentes lugar que tienen una relacion entre si, utilizan un identificador que las relaciona entre si, ejemplo: teniendo dos tablas, usuarios y peliculas la relacion entre las tablas nos permitiran sacar informacion de ambas
### Bases de datos no relacionales
a diferencia de las relacionales, cada tabla es independiente, los documentos no estan diseñados para relacionarse entre si.

* Los grandes servidores utilizan ambos tipos de bases de datos a la vez

### Entidad
Es el dato que se querie representar de forma agrupada, una entidad puede ser representada por una o un conjunto de tablas.

### Tablas
Se ecargan de guardad datos bajo una entidad, cada fila contiene un cierto numero de registros adheridos a una entidad por ejemplo: la tabla de una entidad "Programadores" cada fila representara a un programador. cada columna se ecnarga de guardas los diferentes atributos sujetos a cada registro, por ejemplo: Dentro de una tabla "programadores" cada registro contiene los atributos: id, nombre, apellido...

### Relaciones
Existen diferentes tipos de relaciones, 1:1, 1:N o N:N por ejemplo, una relacion 1:1 podria venir dada por un dni, cada usuario solo puede tener un DNi, Sin embargo una relacion 1:N podria venir dada por los lenguajes de programacion que domine cada programador. Por ultimo las relaciones N:N relaciona muchos conceptos de una tabla con muchos conceptos de otra tabla.