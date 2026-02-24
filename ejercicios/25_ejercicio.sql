-- Ejercicio 25
-- Cliente con mayor variedad de productos comprados

SELECT c.nombre,
       COUNT(DISTINCT dv.id_producto) AS variedad_productos
FROM ventas v
JOIN detalle_ventas dv ON v.id_venta = dv.id_venta
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY c.id_cliente
ORDER BY variedad_productos DESC
LIMIT 1;