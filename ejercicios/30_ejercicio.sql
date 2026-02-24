-- Ejercicio 30
-- Análisis demográfico por rangos de edad

SELECT
    CASE
        WHEN edad BETWEEN 18 AND 29 THEN '18-29'
        WHEN edad BETWEEN 30 AND 39 THEN '30-39'
        WHEN edad BETWEEN 40 AND 49 THEN '40-49'
        WHEN edad BETWEEN 50 AND 59 THEN '50-59'
        WHEN edad BETWEEN 60 AND 69 THEN '60-69'
        ELSE '70+'
    END AS rango_edad,
    COUNT(DISTINCT c.id_cliente) AS clientes_unicos,
    COUNT(v.id_venta) AS numero_transacciones,
    SUM(v.total_venta) AS ingresos_totales
FROM (
    SELECT id_cliente,
           (strftime('%Y','now') - strftime('%Y', fecha_nacimiento)) AS edad
    FROM clientes
) c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY rango_edad
ORDER BY rango_edad;