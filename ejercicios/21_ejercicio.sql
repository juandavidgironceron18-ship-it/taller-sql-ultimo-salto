-- Ejercicio 21
-- Identificar los clientes que utilizaron el cupón ULTIMO_SUSPIRO
-- al menos 3 veces en distintas ventas.

-- Se selecciona el nombre del cliente y la cantidad de veces
-- que utilizó el cupón.
SELECT c.nombre,
       COUNT(*) AS veces_usado
FROM ventas v

-- Se realiza un JOIN entre ventas y clientes para asociar
-- cada venta con el cliente que la realizó.
JOIN clientes c ON v.id_cliente = c.id_cliente

-- Se filtran únicamente las ventas en las que se utilizó
-- el cupón ULTIMO_SUSPIRO.
WHERE v.cupon_usado = 'ULTIMO_SUSPIRO'

-- Se agrupan los resultados por cliente para poder contar
-- cuántas veces cada cliente utilizó el cupón.
GROUP BY c.id_cliente

-- HAVING se usa para filtrar los resultados agregados,
-- seleccionando solo aquellos clientes que usaron el cupón
-- tres o más veces.
HAVING COUNT(*) >= 3;
