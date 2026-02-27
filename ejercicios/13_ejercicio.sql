-- Ejercicio 13
-- Calcular la cantidad total de productos pertenecientes
-- a la categoría Paracaídas.

-- Se utiliza COUNT(*) para contar cuántos productos existen
-- dentro de la categoría Paracaídas.
SELECT COUNT(*) AS total_paracaidas
FROM productos

-- Se filtran únicamente los productos cuya categoría
-- corresponde a Paracaídas.
-- Se usa LIKE para evitar problemas con tildes,
-- mayúsculas o variaciones en el texto almacenado.
WHERE categoria LIKE '%Paraca%';
