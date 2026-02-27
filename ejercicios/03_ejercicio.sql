-- Ejercicio 3
-- Identificar el paracaídas más caro disponible en la tienda.

-- Se seleccionan las columnas nombre y precio para mostrar
-- el producto y su valor correspondiente.
SELECT nombre, precio
FROM productos

-- Se filtran únicamente los productos relacionados con paracaídas.
-- Se usa LIKE para evitar problemas por tildes, mayúsculas
-- o variaciones en el texto de la categoría.
WHERE categoria LIKE '%Paraca%'

-- Se ordenan los productos por precio de forma descendente
-- para que el paracaídas más caro quede en la primera posición.
ORDER BY precio DESC

-- LIMIT 1 permite obtener únicamente el producto con el precio más alto.
LIMIT 1;
