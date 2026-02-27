-- Ejercicio 15
-- Identificar el accesorio más barato disponible en la tienda.

-- Se seleccionan las columnas nombre y precio
-- para identificar el producto y conocer su valor.
SELECT nombre, precio
FROM productos

-- Se filtran únicamente los productos pertenecientes
-- a la categoría Accesorios.
-- Se usa LIKE para evitar inconvenientes con tildes
-- o variaciones en el texto de la categoría.
WHERE categoria LIKE '%Accesorios%'

-- Se ordenan los productos por precio de forma ascendente,
-- de modo que el accesorio más barato quede en la primera posición.
ORDER BY precio ASC

-- LIMIT 1 permite obtener únicamente el accesorio con el menor precio.
LIMIT 1;
