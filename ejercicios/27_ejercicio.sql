-- Ejercicio 27
-- Diferencia entre el mes con mayor y menor ingreso en 2025

WITH ingresos_mensuales AS (
    SELECT strftime('%m', fecha_venta) AS mes,
           SUM(total_venta) AS ingreso
    FROM ventas
    WHERE strftime('%Y', fecha_venta) = '2025'
    GROUP BY mes
)
SELECT MAX(ingreso) - MIN(ingreso) AS diferencia_ingresos
FROM ingresos_mensuales;