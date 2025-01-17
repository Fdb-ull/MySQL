# Bases de datos

## Concepto
Las bases de datos se utilizan para almacenar informacion, la informacion se almacena en tablas relacionales o no relacionales. Su funcion principal es representar datos y a su vez, objetos de las bases de datos.
### Bases de datos relacionales
los datos se enuentran almacenados en diferentes lugar que tienen una relacion entre si, utilizan un identificador que las relaciona entre si, ejemplo: teniendo dos tablas, usuarios y peliculas la relacion entre las tablas nos permitiran sacar informacion de ambas
### Bases de datos no relacionales
A diferencia de las relacionales, cada tabla es independiente, los documentos no estan diseñados para relacionarse entre si.

* Los grandes servidores utilizan ambos tipos de bases de datos a la vez

### Entidad
Es el dato que se querie representar de forma agrupada, una entidad puede ser representada por una o un conjunto de tablas.

### Tablas
Se ecargan de guardad datos bajo una entidad, cada fila contiene un cierto numero de registros adheridos a una entidad por ejemplo: la tabla de una entidad "Programadores" cada fila representara a un programador. cada columna se ecnarga de guardas los diferentes atributos sujetos a cada registro, por ejemplo: Dentro de una tabla "programadores" cada registro contiene los atributos: id, nombre, apellido...

### Relaciones
Existen diferentes tipos de relaciones, 1:1, 1:N o N:N por ejemplo, una relacion 1:1 podria venir dada por un dni, cada usuario solo puede tener un DNi, Sin embargo una relacion 1:N podria venir dada por los lenguajes de programacion que domine cada programador. Por ultimo las relaciones N:N relaciona muchos conceptos de una tabla con muchos conceptos de otra tabla.

--- 

## Creacion de una BBDD
- Creacion de una BBDD: CREATE DATABASE "Nombre";
- Relacionar el Schema con la base de datos.
- Empezar a añadir tablas dentro de la base de datos.

### Primary Key
 La clave primaria es un campo (o un conjunto de campos) en una tabla que se utiliza para identificar de manera única cada registro (fila) en esa tabla. No puede haber dos filas con el mismo valor de clave primaria.

#### Características

1.	Unicidad: Cada valor en la clave primaria debe ser único. Esto garantiza que cada registro se pueda identificar de manera distinta.
2.	No Nulo: Los campos que componen la clave primaria no pueden contener valores nulos. Cada registro debe tener un valor en la clave primaria.
3.	Inmutabilidad: Idealmente, el valor de la clave primaria no debe cambiar. Esto se debe a que muchas tablas pueden hacer referencia a esta clave (a través de claves foráneas), y cambiar su valor podría causar inconsistencias y problemas de integridad referencial.
4.	Índice: En la mayoría de los sistemas de bases de datos, se crea automáticamente un índice en la clave primaria, lo que mejora la velocidad de las operaciones de búsqueda y consulta.

### Identificadores
2. NN (Not Null): Una restricción que asegura que un campo no puede tener un valor nulo.
3. UQ (Unique): Una restricción que asegura que todos los valores en un campo o combinación de campos sean únicos en la tabla.
4. BINARY: Tipo de datos que almacena datos en formato binario.
5. UN (Unsigned): Atributo de tipo de dato numérico que no permite valores negativos.
6. ZF (Zero Fill): Atributo de tipo de dato numérico que rellena con ceros a la izquierda hasta alcanzar la longitud especificada.
7. AI (Auto Increment): Atributo que automáticamente incrementa el valor del campo cada vez que se inserta una nueva fila.
8. G (Generated): Un campo que tiene su valor generado automáticamente, generalmente basado en una expresión o cálculo.

## Consulta de datos

### Sentencias

#### Select
La sentencia SELECT es utilizada en SQL para recuperar datos de una base de datos. La sintaxis básica incluye varias cláusulas opcionales que permiten filtrar, ordenar y agrupar los datos seleccionados.
```SQL
SELECT columnas FROM tabla
[WHERE condición]
[GROUP BY columna]
[HAVING condición]
[ORDER BY columna [ASC | DESC]]
[LIMIT número_filas]
```
```SQL
SELECT [DISTINCT] columnas:
```
- SELECT: Palabra clave utilizada para iniciar una consulta.
- DISTINCT: Opcional. Se utiliza para eliminar duplicados de los resultados.
- columnas: Especifica una o más columnas que se desean recuperar. Puede incluir funciones agregadas, como COUNT, SUM, AVG, etc.
```SQL
FROM tabla:
```
- FROM: Palabra clave utilizada para especificar la tabla de la cual se van a recuperar los datos.
- tabla: Nombre de la tabla de la cual se extraen los datos.
```SQL
WHERE condición:
```
- WHERE: Opcional. Se utiliza para filtrar registros que cumplen con una condición específica.
- condición: Expresión que debe ser verdadera para las filas seleccionadas.
```SQL
GROUP BY columnas:
```
- GROUP BY: Opcional. Se utiliza para agrupar filas que tienen los mismos valores en columnas específicas.
- columnas: Columnas por las que se agruparán los resultados.
```SQL
HAVING condición:
```
- HAVING: Opcional. Similar a WHERE, pero se aplica a los grupos de resultados definidos por GROUP BY.
- condición: Expresión que debe ser verdadera para los grupos seleccionados.
```SQL
ORDER BY columnas [ASC | DESC]:
```
- ORDER BY: Opcional. Se utiliza para ordenar los resultados.
- columnas: Columnas por las que se ordenarán los resultados.
- ASC | DESC: Opcional. Especifica el orden ascendente (ASC) o descendente (DESC).
```SQL
LIMIT número_filas OFFSET offset:
```
- LIMIT: Opcional. Se utiliza para limitar el número de filas devueltas.
- número_filas: Número máximo de filas a devolver.
- OFFSET: Opcional. Número de filas a omitir antes de comenzar a devolver filas.