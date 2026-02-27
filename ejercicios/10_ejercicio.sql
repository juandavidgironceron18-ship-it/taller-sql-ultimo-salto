-- Ejercicio 10
-- Listar las clientas (género femenino) junto con su fecha de nacimiento,
-- ordenadas desde la más antigua hasta la más reciente.

-- Se seleccionan las columnas nombre y fecha_nacimiento
-- porque son los datos necesarios para identificar a la clienta
-- y conocer su fecha de nacimiento.
SELECT nombre, fecha_nacimiento
FROM clientes

-- Se filtran únicamente los registros correspondientes al género femenino.
-- Se asume que el valor 'F' identifica a las clientas mujeres en la base de datos.
WHERE genero = 'F'

-- Se ordenan los resultados por fecha de nacimiento de forma ascendente,
-- mostrando primero a las personas de mayor edad.
ORDER BY fecha_nacimiento ASC;
