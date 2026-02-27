-- Ejercicio 30
-- Análisis demográfico por rangos de edad.
-- Se clasifican los clientes según su edad y se calculan
-- métricas de ventas para cada grupo etario.

SELECT
    -- CASE permite dividir a los clientes en rangos de edad definidos
    CASE
        WHEN edad BETWEEN 18 AND 29 THEN '18-29'
        WHEN edad BETWEEN 30 AND 39 THEN '30-39'
        WHEN edad BETWEEN 40 AND 49 THEN '40-49'
        WHEN edad BETWEEN 50 AND 59 THEN '50-59'
        WHEN edad BETWEEN 60 AND 69 THEN '60-69'
        ELSE '70+'
    END AS rango_edad,

    -- Cuenta la cantidad de clientes distintos en cada rango
    COUNT(DISTINCT c.id_cliente) AS clientes_unicos,

    -- Cuenta el número total de ventas realizadas
    -- por clientes de cada rango de edad
    COUNT(v.id_venta) AS numero_transacciones,

    -- Suma el total de ingresos generados
    -- por cada grupo etario
    SUM(v.total_venta) AS ingresos_totales

FROM (
    -- Subconsulta para calcular la edad aproximada
    -- restando el año actual menos el año de nacimiento
    SELECT
        id_cliente,
        (strftime('%Y','now') - strftime('%Y', fecha_nacimiento)) AS edad
    FROM clientes
) c

-- Se relacionan los clientes con sus ventas
JOIN ventas v ON c.id_cliente = v.id_cliente

-- Se agrupan los resultados por el rango de edad calculado
GROUP BY rango_edad

-- Se ordenan los rangos para mejor lectura
ORDER BY rango_edad;
