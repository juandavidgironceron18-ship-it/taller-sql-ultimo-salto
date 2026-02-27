-- Ejercicio 24
-- Obtener métricas mensuales de ventas para el año 2025,
-- incluyendo total de ventas, número de transacciones y ticket promedio.

-- Se extrae el mes de la fecha de venta usando strftime('%m')
-- para agrupar la información a nivel mensual.
SELECT strftime('%m', fecha_venta) AS mes,

       -- Se calcula el total de ventas del mes sumando
       -- el valor total de todas las transacciones.
       SUM(total_venta) AS total_ventas,

       -- Se cuenta el número de transacciones realizadas en cada mes.
       COUNT(*) AS numero_transacciones,

       -- Se calcula el ticket promedio mensual,
       -- es decir, el valor promedio de cada venta.
       AVG(total_venta) AS ticket_promedio
FROM ventas

-- Se filtran únicamente las ventas realizadas durante el año 2025.
WHERE strftime('%Y', fecha_venta) = '2025'

-- Se agrupan los resultados por mes para obtener
-- las métricas correspondientes a cada periodo mensual.
GROUP BY mes

-- Se ordenan los resultados por mes de forma ascendente
-- para que aparezcan de enero a diciembre.
ORDER BY mes;
