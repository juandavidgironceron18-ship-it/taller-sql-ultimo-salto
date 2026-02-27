-- Ejercicio 14
-- Listar todas las ventas realizadas durante el año 2025,
-- ordenadas desde la más reciente hasta la más antigua.

-- Se seleccionan todas las columnas de la tabla ventas
-- para visualizar la información completa de cada transacción.
SELECT *
FROM ventas

-- Se utiliza la función strftime para extraer el año (%Y)
-- de la columna fecha_venta.
-- Se compara con '2025' para filtrar únicamente las ventas
-- realizadas durante ese año.
WHERE strftime('%Y', fecha_venta) = '2025'

-- Se ordenan los resultados por fecha de venta en orden descendente,
-- mostrando primero las ventas más recientes.
ORDER BY fecha_venta DESC;
