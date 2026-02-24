-- Ejercicio 26
-- Clientes que compraron solo Paracaidas

SELECT c.nombre,
       SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
JOIN detalle_ventas dv ON v.id_venta = dv.id_venta
JOIN productos p ON dv.id_producto = p.id_producto
GROUP BY c.id_cliente
HAVING SUM(CASE WHEN p.categoria LIKE '%Accesor%' THEN 1 ELSE 0 END) = 0;