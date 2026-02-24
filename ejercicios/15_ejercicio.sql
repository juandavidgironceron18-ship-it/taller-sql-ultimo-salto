-- Ejercicio 15
-- Accesorio más barato disponible

SELECT nombre, precio
FROM productos
WHERE categoria LIKE '%Accesorios%'
ORDER BY precio ASC
LIMIT 1;