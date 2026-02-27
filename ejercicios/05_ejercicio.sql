-- Ejercicio 5
-- Mostrar el nombre, correo electrónico y fecha de nacimiento
-- de todos los clientes, ordenados alfabéticamente por nombre.

-- Se seleccionan únicamente las columnas necesarias para el listado
-- (nombre, correo y fecha_nacimiento) para no traer información innecesaria.
SELECT nombre, correo, fecha_nacimiento
FROM clientes

-- ORDER BY nombre ASC organiza los resultados de forma alfabética
-- desde la A hasta la Z, facilitando la lectura del listado.
ORDER BY nombre ASC;;
