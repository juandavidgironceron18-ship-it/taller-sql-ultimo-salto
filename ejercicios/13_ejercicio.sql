-- Ejercicio 13
-- Cantidad de productos en la categoría Paracaidas

SELECT COUNT(*) AS total_paracaidas
FROM productos
WHERE categoria LIKE '%Paraca%';