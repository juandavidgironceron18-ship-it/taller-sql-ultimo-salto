-- Ejercicio 27
-- Calcular la diferencia de ingresos entre el mes con mayor ingreso
-- y el mes con menor ingreso durante el año 2025.

-- Se define una CTE (Common Table Expression) llamada ingresos_mensuales
-- para calcular primero el ingreso total de cada mes del año 2025.
WITH ingresos_mensuales AS (
    SELECT
        -- Se extrae el mes de la fecha de venta
        strftime('%m', fecha_venta) AS mes,

        -- Se suma el total de ventas para obtener
        -- el ingreso mensual correspondiente
        SUM(total_venta) AS ingreso
    FROM ventas

    -- Se filtran únicamente las ventas realizadas en el año 2025
    WHERE strftime('%Y', fecha_venta) = '2025'

    -- Se agrupan los resultados por mes
    GROUP BY mes
)

-- A partir de los ingresos mensuales calculados,
-- se obtiene la diferencia entre el ingreso máximo
-- y el ingreso mínimo del año.
SELECT
    MAX(ingreso) - MIN(ingreso) AS diferencia_ingresos
FROM ingresos_mensuales;
