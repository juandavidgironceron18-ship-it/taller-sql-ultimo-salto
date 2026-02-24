-- Ejercicio 9
-- Venta con el mayor monto registrado

SELECT *
FROM ventas
ORDER BY total_venta DESC
LIMIT 1;