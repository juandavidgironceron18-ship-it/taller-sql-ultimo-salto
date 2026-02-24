-- Ejercicio 7
-- Accesorios con precio menor a 500

SELECT nombre, precio
FROM productos
WHERE categoria LIKE '%Accesorios%'
  AND precio < 500;