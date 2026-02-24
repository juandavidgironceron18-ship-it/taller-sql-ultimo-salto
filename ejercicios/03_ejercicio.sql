-- Ejercicio 3
-- Paracaídas más caro disponible

SELECT nombre, precio
FROM productos
WHERE categoria LIKE '%Paraca%'
ORDER BY precio DESC
LIMIT 1;