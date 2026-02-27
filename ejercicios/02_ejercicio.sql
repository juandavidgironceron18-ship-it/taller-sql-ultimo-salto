-- Ejercicio 2
-- Listar todos los productos de la categoría Paracaídas con su precio,
-- ordenados de mayor a menor precio.

-- Se seleccionan las columnas nombre y precio porque son los datos
-- relevantes para mostrar la información solicitada.
SELECT nombre, precio
FROM productos

-- Se usa LIKE en lugar de '=' para evitar problemas con tildes,
-- mayúsculas o espacios en los datos almacenados en la columna categoria.
-- El patrón '%Paraca%' permite capturar cualquier variación del texto.
WHERE categoria LIKE '%Paraca%'

-- Se ordenan los resultados por precio de forma descendente
-- para que el producto más caro aparezca primero.
ORDER BY precio DESC;
