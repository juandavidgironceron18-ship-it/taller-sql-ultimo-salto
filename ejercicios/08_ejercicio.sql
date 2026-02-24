-- Ejercicio 8
-- Ventas que usaron el cupón ULTIMO_SUSPIRO

SELECT COUNT(*) AS ventas_con_cupon
FROM ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO';