-- Ejercicio 23
-- Top 5 productos con mayor ingreso acumulado

SELECT p.nombre,
       SUM(dv.cantidad * dv.precio_unitario) AS ingreso_total
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id_producto
GROUP BY p.id_producto
ORDER BY ingreso_total DESC
LIMIT 5;