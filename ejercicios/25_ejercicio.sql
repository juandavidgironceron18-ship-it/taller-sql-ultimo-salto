-- Ejercicio 25
-- Identificar el cliente que ha comprado la mayor variedad
-- de productos diferentes a lo largo de todas sus compras.

-- Se selecciona el nombre del cliente y se cuenta la cantidad
-- de productos distintos que ha comprado.
SELECT c.nombre,
       COUNT(DISTINCT dv.id_producto) AS variedad_productos
FROM ventas v

-- Se hace JOIN con detalle_ventas para acceder a los productos
-- asociados a cada venta.
JOIN detalle_ventas dv ON v.id_venta = dv.id_venta

-- Se hace JOIN con clientes para identificar al cliente
-- correspondiente a cada venta.
JOIN clientes c ON v.id_cliente = c.id_cliente

-- Se agrupan los resultados por cliente para poder contar
-- la cantidad de productos distintos comprados por cada uno.
GROUP BY c.id_cliente

-- Se ordenan los clientes por la variedad de productos comprados
-- de forma descendente, dejando primero al cliente con mayor diversidad.
ORDER BY variedad_productos DESC

-- LIMIT 1 permite obtener únicamente el cliente con mayor variedad de productos.
LIMIT 1;
