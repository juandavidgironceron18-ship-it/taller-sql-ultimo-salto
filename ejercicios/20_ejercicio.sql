-- Ejercicio 20
-- Métricas por categoría de producto

SELECT p.categoria,
       SUM(dv.cantidad * dv.precio_unitario) AS ingreso_total,
       SUM(dv.cantidad) AS unidades_vendidas,
       AVG(v.total_venta) AS ticket_promedio
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id_producto
JOIN ventas v ON dv.id_venta = v.id_venta
GROUP BY p.categoria;