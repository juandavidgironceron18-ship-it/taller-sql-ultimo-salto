-- Ejercicio 19
-- Identificar el producto más vendido según la cantidad total de unidades vendidas.

-- Se selecciona el nombre del producto y la suma de las cantidades vendidas,
-- lo que permite conocer cuántas unidades se han vendido en total por producto.
SELECT p.nombre,
       SUM(dv.cantidad) AS total_unidades
FROM detalle_ventas dv

-- Se realiza un JOIN entre detalle_ventas y productos
-- para asociar cada línea de venta con su producto correspondiente.
JOIN productos p ON dv.id_producto = p.id_producto

-- Se agrupan los resultados por producto para poder calcular
-- el total de unidades vendidas de cada uno.
GROUP BY p.id_producto

-- Se ordenan los productos por la cantidad total de unidades vendidas
-- de forma descendente, dejando primero el producto más vendido.
ORDER BY total_unidades DESC

-- LIMIT 1 permite obtener únicamente el producto con mayor número de unidades vendidas.
LIMIT 1;
