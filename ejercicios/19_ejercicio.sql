-- Ejercicio 19
-- Producto más vendido en cantidad de unidades

SELECT p.nombre,
       SUM(dv.cantidad) AS total_unidades
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id_producto
GROUP BY p.id_producto
ORDER BY total_unidades DESC
LIMIT 1;