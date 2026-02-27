-- Ejercicio 20
-- Obtener métricas de ventas agrupadas por categoría de producto,
-- incluyendo ingreso total, unidades vendidas y ticket promedio.

-- Se selecciona la categoría del producto y se calculan
-- distintas métricas de negocio asociadas a cada categoría.
SELECT p.categoria,

       -- Se calcula el ingreso total multiplicando la cantidad vendida
       -- por el precio unitario de cada producto y sumando el resultado.
       SUM(dv.cantidad * dv.precio_unitario) AS ingreso_total,

       -- Se suman todas las cantidades vendidas para obtener
       -- el total de unidades vendidas por categoría.
       SUM(dv.cantidad) AS unidades_vendidas,

       -- Se calcula el ticket promedio usando el total de la venta.
       -- Esto permite conocer el valor promedio de las compras
       -- asociadas a cada categoría.
       AVG(v.total_venta) AS ticket_promedio
FROM detalle_ventas dv

-- Se hace JOIN con productos para poder acceder a la categoría
-- de cada producto vendido.
JOIN productos p ON dv.id_producto = p.id_producto

-- Se hace JOIN con ventas para obtener información del total
-- de cada transacción y calcular el ticket promedio.
JOIN ventas v ON dv.id_venta = v.id_venta

-- Se agrupan los resultados por categoría de producto
-- para que las métricas se calculen a ese nivel.
GROUP BY p.categoria;
