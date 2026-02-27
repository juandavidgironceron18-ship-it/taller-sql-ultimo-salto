-- Ejercicio 29
-- Calcular el porcentaje de los ingresos totales que provienen
-- de ventas en las que se utilizó el cupón ULTIMO_SUSPIRO.

-- Se calcula primero el ingreso generado por ventas con el cupón,
-- usando CASE para sumar solo aquellas ventas donde el cupón fue aplicado.
-- Luego, ese valor se divide entre el ingreso total de todas las ventas
-- y se multiplica por 100 para obtener el porcentaje.
SELECT
    (
        SUM(
            CASE
                WHEN cupon_usado = 'ULTIMO_SUSPIRO' THEN total_venta
                ELSE 0
            END
        ) * 100.0
        / SUM(total_venta)
    ) AS porcentaje_con_cupon
FROM ventas;
