-- Ejercicio 14
-- Ventas realizadas en el año 2025

SELECT *
FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'
ORDER BY fecha_venta DESC;