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

---

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

---

```SQL
FROM tabla:
```
- FROM: Palabra clave utilizada para especificar la tabla de la cual se van a recuperar los datos.
- tabla: Nombre de la tabla de la cual se extraen los datos.

---

```SQL
WHERE condición:
```
- WHERE: Opcional. Se utiliza para filtrar registros que cumplen con una condición específica.
- condición: Expresión que debe ser verdadera para las filas seleccionadas.

---

```SQL
GROUP BY columnas:
```
- GROUP BY: Opcional. Se utiliza para agrupar filas que tienen los mismos valores en columnas específicas.
- columnas: Columnas por las que se agruparán los resultados.

---

```SQL
HAVING condición:
```
- HAVING: Opcional. Similar a WHERE, pero se aplica a los grupos de resultados definidos por GROUP BY.
- condición: Expresión que debe ser verdadera para los grupos seleccionados.

---

```SQL
ORDER BY columnas [ASC | DESC]:
```
- ORDER BY: Opcional. Se utiliza para ordenar los resultados.
- columnas: Columnas por las que se ordenarán los resultados.
- ASC | DESC: Opcional. Especifica el orden ascendente (ASC) o descendente (DESC).

---

```SQL
LIMIT número_filas OFFSET offset:
```
- LIMIT: Opcional. Se utiliza para limitar el número de filas devueltas.
- número_filas: Número máximo de filas a devolver.
- OFFSET: Opcional. Número de filas a omitir antes de comenzar a devolver filas.

---

```SQL
SELECT columnas
FROM tabla
WHERE columna LIKE patrón;
```

- LIKE: La cláusula LIKE en SQL se utiliza para buscar un patrón específico dentro de una columna de texto. 
Patrones Utilizados con LIKE

1.	Porcentaje (%): Representa cero, uno o múltiples caracteres.
    - 'a%': cualquier cadena que comience con ‘a’.
    - '%a': cualquier cadena que termine con ‘a’.
    - '%a%': cualquier cadena que contenga ‘a’.
2. Guión Bajo (_): Representa un solo carácter.
    - 'a_': cualquier cadena que comience con ‘a’ seguido de exactamente un carácter.
    - 'a__': cualquier cadena que comience con ‘a’ seguido de exactamente dos caracteres.
    - 'a_%': cualquier cadena que comience con ‘a’ seguido de al menos un carácter.

---

```SQL
SELECT * FROM Empleados
WHERE Departamento = 'Ventas' AND Años_Experiencia > 5;
```
- AND: Se utiliza para combinar múltiples condiciones en una cláusula WHERE. Ambas condiciones deben ser verdaderas para que la fila sea seleccionada.

Caso de uso: Seleccionar empleados que trabajan en el departamento de ventas y tienen más de 5 años de experiencia.

---

```SQL
SELECT * FROM Empleados
WHERE Departamento = 'Ventas' OR Departamento = 'Marketing';
```
- OR: Se utiliza para combinar múltiples condiciones en una cláusula WHERE. Al menos una de las condiciones debe ser verdadera para que la fila sea seleccionada.
Caso de uso:
Seleccionar empleados que trabajan en el departamento de ventas o en el departamento de marketing.

---

```SQL
SELECT * FROM Empleados
WHERE NOT Departamento = 'Ventas';
```
- NOT: Se utiliza para seleccionar filas que no cumplen con una condición especificada.

Caso de uso: Seleccionar empleados que no trabajan en el departamento de ventas.

---

```SQL
SELECT * FROM Productos
LIMIT 10;
```
- LIMIT: Se utiliza para limitar el número de filas devueltas por una consulta.

Caso de uso: Seleccionar los primeros 10 registros de una tabla de productos.

---

```SQL
SELECT * FROM Empleados
WHERE Jefe IS NULL;
```
- NULL: Se utiliza para buscar valores nulos en una columna.

Caso de uso: Seleccionar empleados que no tienen un jefe asignado.

---

```SQL
SELECT MIN(Salario) FROM Empleados;
```
- MIN: Función de agregación que devuelve el valor mínimo de una columna.

Caso de uso: Encontrar el salario más bajo de todos los empleados.

---

```SQL
SELECT MAX(Salario) FROM Empleados;
```
- MAX: Función de agregación que devuelve el valor máximo de una columna.

Caso de uso: Encontrar el salario más alto de todos los empleados.

---

```SQL
SELECT COUNT(*) FROM Empleados;
```
- COUNT: Función de agregación que cuenta el número de filas que cumplen con una condición.

Caso de uso: Contar el número total de empleados en la empresa.

---

```SQL
SELECT SUM(Ventas) FROM Productos;
```
- SUM: Función de agregación que suma los valores de una columna.

Caso de uso: Calcular el total de ventas de todos los productos.

---

```SQL
SELECT AVG(Salario) FROM Empleados;
```
- AVG: Función de agregación que calcula el valor promedio de una columna.

Caso de uso: Calcular el salario promedio de los empleados.

---

```SQL
SELECT * FROM Empleados
WHERE Departamento IN ('Ventas', 'Marketing', 'IT');
```
- IN: Se utiliza para especificar múltiples valores en una condición WHERE.

Caso de uso: Seleccionar empleados que trabajan en los departamentos de ventas, marketing o IT.

---

```SQL
SELECT * FROM Productos
WHERE Precio BETWEEN 10 AND 50;
```
- BETWEEN: Se utiliza para seleccionar valores dentro de un rango.

Caso de uso: Seleccionar productos cuyo precio esté entre 10 y 50.

---

* Ejemplo combinado utilizando las columnas ID, name, surname, email, y age.
Caso de uso combinado

	1.	Seleccionar registros de personas cuyo surname (apellido) comience con ‘A’.
	2.	Que tengan una age (edad) entre 25 y 35 años.
	3.	Excluir registros con email nulo.
	4.	Ordenar los resultados por name en orden ascendente.
	5.	Limitar los resultados a los primeros 10 registros.
```SQL
SELECT ID, name, surname, email, age
FROM Personas
WHERE surname LIKE 'A%'        # Apellidos que comienzan con 'A'
  AND age BETWEEN 25 AND 35    # Edad entre 25 y 35
  AND email IS NOT NULL        # Excluir registros con email nulo
ORDER BY name ASC              # Ordenar por nombre en orden ascendente
LIMIT 10;                      # Limitar los resultados a los primeros 10 registros
```

---

```SQL
SELECT name AS Nombre, surname AS Apellido
FROM Personas;
```
- Alias (AS): Un alias es un nombre temporal asignado a una columna o tabla en una consulta SQL. Se usa para simplificar la lectura y mejorar la legibilidad del código.

Caso de uso: Renombrar columnas o tablas para facilitar la interpretación de los resultados.

---

```SQL
SELECT age, COUNT(*) AS NumeroPersonas
FROM Personas
GROUP BY age;
```
- GROUP BY: La cláusula GROUP BY se utiliza para agrupar filas que tienen los mismos valores en columnas especificadas. Se suele usar junto con funciones de agregación (COUNT, SUM, AVG, MAX, MIN).

Caso de uso: Agrupar datos por una columna específica y aplicar funciones de agregación.

---

```SQL
SELECT age, COUNT(*) AS NumeroPersonas
FROM Personas
GROUP BY age
HAVING COUNT(*) > 5;
```
- HAVING: La cláusula HAVING se utiliza para filtrar grupos de resultados creados por la cláusula GROUP BY. A diferencia de WHERE, que filtra filas antes de agrupar, HAVING filtra después de agrupar.

Caso de uso: Filtrar los grupos de resultados basados en una condición agregada.

---

```SQL
SELECT name, age,
CASE
    WHEN age < 18 THEN 'Menor de Edad'
    WHEN age BETWEEN 18 AND 64 THEN 'Adulto'
    ELSE 'Mayor'
END AS GrupoEdad
FROM Personas;
```
- CASE: La expresión CASE se utiliza para evaluar una lista de condiciones y devolver uno de varios resultados posibles. Es similar a una declaración if-else en programación.

Caso de uso: Crear columnas calculadas basadas en condiciones.


---

- Ejemplo Combinado: Supongamos que queremos obtener un informe de las personas en la tabla Personas, mostrando cuántas hay en cada grupo de edad, clasificándolas y filtrando los grupos con menos de 3 personas.

```SQL
SELECT 
    CASE
        WHEN age < 18 THEN 'Menor de Edad'
        WHEN age BETWEEN 18 AND 64 THEN 'Adulto'
        ELSE 'Mayor'
    END AS GrupoEdad,
    COUNT(*) AS NumeroPersonas
FROM Personas
GROUP BY 
    CASE
        WHEN age < 18 THEN 'Menor de Edad'
        WHEN age BETWEEN 18 AND 64 THEN 'Adulto'
        ELSE 'Mayor'
    END
HAVING COUNT(*) >= 3;
```

## Escritura de datos
### Comandos
#### INSERT
La instrucción INSERT en SQL se utiliza para agregar nuevas filas a una tabla en una base de datos. Aquí te explico en detalle su sintaxis y varios ejemplos de uso.
```SQL
INSERT INTO tabla (columna1, columna2, columna3, ...)
VALUES (valor1, valor2, valor3, ...);
```
##### Componentes de la Sintaxis:

1. INSERT INTO tabla: Especifica la tabla en la que se insertarán los datos.
2. (columna1, columna2, columna3, ...): Lista opcional de las columnas en las que se insertarán los datos. Si no se especifica, se espera que se inserten valores para todas las columnas de la tabla en el mismo orden en que están definidas.
3. VALUES (valor1, valor2, valor3, ...): Especifica los valores que se insertarán en las columnas correspondientes.

---

#### Update
La instrucción UPDATE en SQL se utiliza para modificar los datos existentes en una tabla. Permite actualizar los valores de una o más columnas para las filas que cumplen con una condición especificada. Aquí tienes una descripción detallada de su sintaxis y ejemplos de uso.

```SQL
UPDATE tabla
SET columna1 = valor1, columna2 = valor2, ...
WHERE condición;
```
##### Componentes de la Sintaxis:

1. UPDATE tabla: Especifica la tabla que se actualizará.
2. SET columna1 = valor1, columna2 = valor2, ...: Define las columnas y los nuevos valores que se asignarán.
3. WHERE condición: Especifica las filas que se actualizarán. Si se omite esta cláusula, todas las filas de la tabla serán actualizadas.

##### Notas Adicionales

* Seguridad de datos: Siempre usa una cláusula WHERE a menos que desees actualizar todas las filas de una tabla.
* Copias de seguridad: Considera realizar una copia de seguridad de la tabla antes de realizar actualizaciones masivas.
* Transacciones: En sistemas que soportan transacciones, puedes envolver tus actualizaciones en una transacción para asegurar que todos los cambios se realicen correctamente.
* Restricciones: Asegúrate de que las actualizaciones no violen restricciones de integridad, como claves primarias o foráneas.

---

#### Delete
La instrucción DELETE en SQL se utiliza para eliminar filas de una tabla. Es una operación potente y debe ser utilizada con precaución, especialmente cuando no se especifica una condición, ya que puede eliminar todas las filas de la tabla.
```SQL
DELETE FROM tabla
WHERE condición;
```
##### Componentes de la Sintaxis

1. DELETE FROM tabla: Especifica la tabla de la cual se eliminarán las filas.
2. WHERE condición: Define las filas que serán eliminadas. Si se omite esta cláusula, se eliminarán todas las filas de la tabla.

##### Notas Adicionales

* Seguridad de datos: Siempre usa una cláusula WHERE a menos que desees eliminar todas las filas de una tabla.
* Copias de seguridad: Considera realizar una copia de seguridad de la tabla antes de realizar eliminaciones masivas.
* Transacciones: En sistemas que soportan transacciones, puedes envolver tus eliminaciones en una transacción para asegurar que todos los cambios se realicen correctamente.
* Integridad referencial: Asegúrate de que las eliminaciones no violen restricciones de integridad referencial. Por ejemplo, si una tabla tiene claves foráneas que dependen de la tabla de la cual se están eliminando filas, es posible que necesites ajustar o eliminar esos registros dependientes primero.

--- 

## Administracion de tablas

### CREATE TABLE
La instrucción CREATE TABLE en SQL se utiliza para crear una nueva tabla en una base de datos. Esta instrucción define la estructura de la tabla, incluyendo sus columnas, tipos de datos y restricciones.
```SQL
CREATE TABLE nombre_tabla (
    nombre_columna1 tipo_dato1 [restricciones],
    nombre_columna2 tipo_dato2 [restricciones],
    ...
    [restricciones_tabla]
);
```
#### Componentes de la Sintaxis

1. CREATE TABLE nombre_tabla: Define el nombre de la nueva tabla.
2.	nombre_columna tipo_dato: Define cada columna de la tabla con su tipo de dato.
3. [restricciones]: Opcionalmente, define restricciones para cada columna (como PRIMARY KEY, NOT NULL, UNIQUE, FOREIGN KEY, etc.).
4. [restricciones_tabla]: Opcionalmente, define restricciones a nivel de tabla (como claves primarias o foráneas que involucran múltiples columnas).

#### Notas Adicionales

* Tipos de datos: Los tipos de datos pueden variar entre diferentes sistemas de gestión de bases de datos (DBMS). Algunos ejemplos comunes incluyen INT, VARCHAR, TEXT, DATE, DECIMAL, etc.

#### Restricciones
Las restricciones aseguran la integridad de los datos.

1. PRIMARY KEY: La restricción PRIMARY KEY se utiliza para identificar de manera única cada fila en una tabla. Una tabla puede tener solo una clave primaria, que puede consistir en una o varias columnas.

```SQL
CREATE TABLE Empleados (
    ID INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50)
);
```

---

2. FOREIGN KEY: La restricción FOREIGN KEY se utiliza para enlazar dos tablas. Establece una relación entre una columna o un conjunto de columnas en la tabla hija con una columna o un conjunto de columnas en la tabla padre.
```SQL
CREATE TABLE Departamentos (
    ID INT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE Empleados (
    ID INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES Departamentos(ID)
);
```

---

3. UNIQUE: La restricción UNIQUE asegura que todos los valores en una columna o un conjunto de columnas sean únicos.

```SQL
CREATE TABLE Usuarios (
    ID INT PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    email VARCHAR(100) UNIQUE
);
```

---

4. NOT NULL: La restricción NOT NULL asegura que una columna no pueda contener valores nulos.

```SQL
CREATE TABLE Productos (
    ID INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
);
```

---

6. DEFAULT: La restricción DEFAULT establece un valor por defecto para una columna si no se especifica ningún valor al insertar una nueva fila.
```SQL
CREATE TABLE Productos (
    ID INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    fecha_creacion DATE DEFAULT CURRENT_DATE
);
```
---

7. AUTO_INCREMENT: La restricción AUTO_INCREMENT (o su equivalente en otros DBMS) se utiliza para generar automáticamente un valor único para una columna, generalmente utilizada para claves primarias.
```SQL
CREATE TABLE Clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);
```

---

### ALTER TABLE
La instrucción ALTER TABLE en SQL se utiliza para modificar la estructura de una tabla existente. Esto incluye agregar, eliminar o modificar columnas, así como añadir o eliminar restricciones.
- Agregar una columna
```SQL
ALTER TABLE nombre_tabla
ADD nombre_columna tipo_dato [restricciones];
```
- Eliminar una columna
```SQL
ALTER TABLE nombre_tabla
DROP COLUMN nombre_columna;
```
- Modificar una columna
```SQL
ALTER TABLE nombre_tabla
MODIFY nombre_columna tipo_dato [restricciones];
```
- Renombrar una columna
```SQL
ALTER TABLE nombre_tabla
RENAME COLUMN nombre_columna_actual TO nuevo_nombre_columna;
```
- Renombrar la tabla
```SQL
ALTER TABLE nombre_tabla_actual
RENAME TO nuevo_nombre_tabla;
```
- Añadir una restriccion 
```SQL
ALTER TABLE nombre_tabla
ADD [CONSTRAINT nombre_restriccion] restriccion (nombre_columna);
```
- Eliminar una restriccion
```SQL
ALTER TABLE nombre_tabla
DROP CONSTRAINT nombre_restriccion;
```

---

## Relacion entre tablas

Las relaciones entre tablas se establecen mediante el uso de claves primarias y claves foráneas. Aquí hay una descripción de los diferentes tipos de relaciones entre tablas y cómo se implementan.

Tipos de Relaciones:

- Relación Uno a Uno (1:1)
- Relación Uno a Muchos (1:N)
- Relación Muchos a Muchos (N:M)

### Relación Uno a Uno (1:1)

En una relación uno a uno, cada fila en la tabla A se relaciona con una sola fila en la tabla B y viceversa. Estas relaciones no son muy comunes, pero pueden ser útiles para dividir datos en tablas más pequeñas por razones de seguridad, almacenamiento o desempeño.

Ejemplo

Supongamos que tenemos una tabla Personas y queremos almacenar información adicional en una tabla separada DetallesPersonales.
```SQL
CREATE TABLE Personas (
    PersonaID INT PRIMARY KEY,
    Nombre VARCHAR(50)
);

CREATE TABLE DetallesPersonales (
    DetalleID INT PRIMARY KEY,
    PersonaID INT,
    FechaNacimiento DATE,
    FOREIGN KEY (PersonaID) REFERENCES Personas(PersonaID)
);
```

---

### Relación Uno a Muchos (1:N)

En una relación uno a muchos, una fila en la tabla A puede relacionarse con múltiples filas en la tabla B, pero una fila en la tabla B se relaciona con una sola fila en la tabla A. Esta es la relación más común en las bases de datos relacionales.

- Ejemplo: Supongamos que tenemos una tabla Departamentos y una tabla Empleados. Un departamento puede tener muchos empleados, pero un empleado pertenece a un solo departamento.
```SQL
CREATE TABLE Departamentos (
    DepartamentoID INT PRIMARY KEY,
    NombreDepartamento VARCHAR(50)
);

CREATE TABLE Empleados (
    EmpleadoID INT PRIMARY KEY,
    NombreEmpleado VARCHAR(50),
    DepartamentoID INT,
    FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
);
```

---

### Relación Muchos a Muchos (N:M)
En una relación muchos a muchos, múltiples filas en la tabla A pueden relacionarse con múltiples filas en la tabla B. Para implementar este tipo de relación, se utiliza una tabla intermedia (también llamada tabla de asociación o tabla de unión) que contiene las claves foráneas de ambas tablas.

- Ejemplo: Supongamos que tenemos una tabla Estudiantes y una tabla Cursos. Un estudiante puede inscribirse en muchos cursos y un curso puede tener muchos estudiantes. Crearemos una tabla intermedia EstudiantesCursos para gestionar esta relación.

```SQL
CREATE TABLE Estudiantes (
    EstudianteID INT PRIMARY KEY,
    NombreEstudiante VARCHAR(50)
);

CREATE TABLE Cursos (
    CursoID INT PRIMARY KEY,
    NombreCurso VARCHAR(50)
);

CREATE TABLE EstudiantesCursos (
    EstudianteID INT,
    CursoID INT,
    PRIMARY KEY (EstudianteID, CursoID),
    FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
);
```

---

### Auto Referencia
Una autorreferencia en bases de datos ocurre cuando una tabla contiene una clave foránea que hace referencia a su propia clave primaria. Este tipo de relación es útil para modelar estructuras jerárquicas o recursivas, como una jerarquía de empleados y supervisores, categorías y subcategorías, o comentarios y respuestas en un foro.

- Ejemplo de Uso: Jerarquía de Empleados

Supongamos que tenemos una tabla Empleados donde cada empleado puede tener un supervisor que también es un empleado. La tabla necesita referenciarse a sí misma para modelar esta jerarquía.
```SQL
CREATE TABLE Empleados (
    EmpleadoID INT PRIMARY KEY,
    NombreEmpleado VARCHAR(50) NOT NULL,
    SupervisorID INT,
    FOREIGN KEY (SupervisorID) REFERENCES Empleados(EmpleadoID)
);
```

---

## Consulta de Datos Relacionados

### JOINs
Los JOINs en SQL son operaciones que permiten combinar filas de dos o más tablas basándose en una condición relacionada entre ellas. Los tipos más comunes de JOINs son: INNER JOIN, LEFT JOIN (LEFT OUTER JOIN), RIGHT JOIN (RIGHT OUTER JOIN), FULL JOIN (FULL OUTER JOIN), CROSS JOIN y SELF JOIN. A continuación, se describe cada uno con su sintaxis y ejemplos.

#### INNER JOIN
Combina filas de dos tablas solo si hay una coincidencia en las columnas especificadas. Si no hay coincidencia, las filas no se incluyen en el resultado.
```SQL
SELECT columnas
FROM tabla1
INNER JOIN tabla2
ON tabla1.columna = tabla2.columna;
```

---

#### LEFT JOIN (LEFT OUTER JOIN)
Combina todas las filas de la tabla izquierda y las filas coincidentes de la tabla derecha. Si no hay coincidencia, las columnas de la tabla derecha serán nulas.
```SQL
SELECT columnas
FROM tabla1
LEFT JOIN tabla2
ON tabla1.columna = tabla2.columna;
```

---

#### RIGHT JOIN (RIGHT OUTER JOIN)
Combina todas las filas de la tabla derecha y las filas coincidentes de la tabla izquierda. Si no hay coincidencia, las columnas de la tabla izquierda serán nulas.
```SQL
SELECT columnas
FROM tabla1
RIGHT JOIN tabla2
ON tabla1.columna = tabla2.columna;
```

---

## Indices
Los índices en una base de datos son estructuras especiales asociadas a tablas que mejoran la velocidad de recuperación de datos. Actúan como índices en libros, permitiendo un acceso rápido a las filas de la tabla según los valores de una o más columnas. Sin embargo, los índices también pueden tener un costo en términos de almacenamiento y velocidad de inserción/actualización de datos.
A la hora de crear un indice por convenio se suele asignar el prefijo _"indx_"_ al nombre del atributo que deseamos indexar.

### Indice Comun
Almacena una copia ordenada de los valores indexados, dejando los datos en la tabla en su lugar. Se puede crear múltiples índices no clúster en una tabla.
```SQL
CREATE INDEX idx_nombre_empleado
ON Empleados (NombreEmpleado);
```

---

### Indice Unico
Este índice asegura que todos los valores en la columna indexada sean únicos, pero permite un solo valor nulo.
```SQL
CREATE UNIQUE INDEX idx_email_unico
ON Empleados (Email);
```

---

### Indice Compuesto
Este índice se crea en dos o más columnas de una tabla. Es útil para consultas que involucran múltiples columnas en las cláusulas WHERE y JOIN.
```SQL
CREATE INDEX idx_empleado_nombre_apellido
ON Empleados (NombreEmpleado, ApellidoEmpleado);
```

---

- Ventajas de Usar Índices

* Rápida Recuperación de Datos: Los índices aceleran la recuperación de datos, especialmente en tablas grandes.
* Consultas Más Eficientes: Mejoran el rendimiento de las consultas SELECT que filtran o buscan datos.
* Integridad de Datos: Índices únicos garantizan la unicidad de los valores en las columnas indexadas.

- Desventajas de Usar Índices

* Espacio de Almacenamiento: Los índices ocupan espacio adicional en disco.
* Rendimiento de Escritura: Insertar, actualizar o eliminar datos puede ser más lento debido a la necesidad de actualizar los índices.
* Mantenimiento: Los índices deben ser gestionados y mantenidos, especialmente a medida que los datos cambian.

---

## Triggers
Los triggers (disparadores) en bases de datos son procedimientos almacenados que se ejecutan automáticamente en respuesta a ciertos eventos en una tabla o vista. Estos eventos pueden ser operaciones de inserción (INSERT), actualización (UPDATE), o eliminación (DELETE). Los triggers son útiles para mantener la integridad de los datos, realizar validaciones, o sincronizar tablas relacionadas.
- Ejemplo: Asegurarse de que el nombre del empleado esté en mayúsculas antes de insertarlo.
```SQL
CREATE TRIGGER before_insert_empleados
BEFORE INSERT ON Empleados
FOR EACH ROW
BEGIN
    SET NEW.NombreEmpleado = UPPER(NEW.NombreEmpleado);
END;
```
- Ejemplo: Registrar la inserción de un nuevo empleado en una tabla de auditoría.
```SQL
CREATE TRIGGER after_insert_empleados
AFTER INSERT ON Empleados
FOR EACH ROW
BEGIN
    INSERT INTO Auditoria (Accion, Fecha, EmpleadoID)
    VALUES ('INSERT', NOW(), NEW.EmpleadoID);
END;
```
### SIGNAL SQLSTATE "Numero de la excepcion"
Se utiliza en SQL para generar una excepción o error personalizado dentro de un bloque de código de un trigger, procedimiento almacenado, o función.
```SQL
SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Mensaje de error personalizado';
```
