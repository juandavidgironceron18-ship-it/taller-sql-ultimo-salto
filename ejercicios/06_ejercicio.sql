-- Ejercicio 6
-- Calcular el monto total de ventas realizadas en toda la historia de la tienda.

-- Se utiliza la función SUM para sumar los valores de la columna total_venta,
-- que almacena el valor monetario de cada transacción registrada.
-- No se usa GROUP BY porque se desea obtener un único valor global
-- correspondiente al total histórico de ventas.

SELECT SUM(total_venta) AS monto_total_ventas
FROM ventas;
