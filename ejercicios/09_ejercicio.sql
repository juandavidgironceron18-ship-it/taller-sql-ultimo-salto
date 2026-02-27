-- Ejercicio 9
-- Identificar la venta con el mayor monto registrado en la base de datos.

-- Se seleccionan todas las columnas de la tabla ventas
-- porque se desea visualizar toda la información asociada
-- a la transacción de mayor valor.
SELECT *
FROM ventas

-- Se ordenan las ventas de forma descendente según el valor total de la venta,
-- colocando primero la transacción con el monto más alto.
ORDER BY total_venta DESC

-- LIMIT 1 permite obtener únicamente la venta con el mayor monto.
LIMIT 1;
