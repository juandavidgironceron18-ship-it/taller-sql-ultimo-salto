-- Ejercicio 10
-- Clientes de género femenino ordenados por fecha de nacimiento

SELECT nombre, fecha_nacimiento
FROM clientes
WHERE genero = 'F'
ORDER BY fecha_nacimiento ASC;