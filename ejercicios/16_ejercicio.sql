-- Ejercicio 16
-- Identificar el cliente que ha gastado la mayor cantidad de dinero en total.

-- Se selecciona el nombre del cliente y la suma del total de sus compras.
-- La suma de total_venta representa el dinero total gastado por cada cliente.
SELECT c.nombre,
       SUM(v.total_venta) AS total_gastado
FROM ventas v

-- Se realiza un JOIN entre ventas y clientes para poder relacionar
-- cada venta con el cliente que la realizó.
JOIN clientes c ON v.id_cliente = c.id_cliente

-- Se agrupan los resultados por cliente para poder calcular
-- el total gastado por cada uno.
GROUP BY c.id_cliente

-- Se ordenan los clientes por el total gastado de forma descendente,
-- dejando primero al cliente que más dinero ha gastado.
ORDER BY total_gastado DESC

-- LIMIT 1 permite obtener únicamente al cliente con el mayor gasto total.
LIMIT 1;
