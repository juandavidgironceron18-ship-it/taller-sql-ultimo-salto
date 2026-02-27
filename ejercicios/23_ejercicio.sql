-- Ejercicio 23
-- Identificar los 5 productos que han generado el mayor ingreso acumulado.

-- Se selecciona el nombre del producto y el ingreso total generado,
-- calculado a partir de la cantidad vendida y el precio unitario.
SELECT p.nombre,
       SUM(dv.cantidad * dv.precio_unitario) AS ingreso_total
FROM detalle_ventas dv

-- Se realiza un JOIN entre detalle_ventas y productos
-- para asociar cada registro de venta con su producto correspondiente.
JOIN productos p ON dv.id_producto = p.id_producto

-- Se agrupan los resultados por producto para poder calcular
-- el ingreso total generado por cada uno.
GROUP BY p.id_producto

-- Se ordenan los productos por ingreso total de forma descendente,
-- mostrando primero los que más ingresos han generado.
ORDER BY ingreso_total DESC

-- LIMIT 5 permite obtener únicamente los cinco productos
-- con mayor ingreso acumulado.
LIMIT 5;
