# Listar todos los usuarios ordenados por edad
SELECT * FROM users ORDER BY age;

# Listar todos los usuarios ordenados por edad de forma descendente
SELECT * FROM users ORDER BY age DESC;

# Listar todos los usuarios ordenados por edad de forma ascendente
SELECT * FROM users ORDER BY age ASC;

# Listar todos los usuarios ordenados por edad mayores de 30 años
SELECT * FROM users WHERE age > 30 ORDER BY age;