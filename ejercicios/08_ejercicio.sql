-- Ejercicio 8
-- Contar cuántas ventas se realizaron utilizando el cupón ULTIMO_SUSPIRO.

-- Se utiliza COUNT(*) para contar el número de ventas,
-- ya que cada fila de la tabla ventas representa una transacción.
SELECT COUNT(*) AS ventas_con_cupon
FROM ventas

-- Se filtran únicamente las ventas en las que el cupón utilizado
-- fue exactamente 'ULTIMO_SUSPIRO'.
-- Se usa la columna cupon_usado, que indica si una venta tuvo
-- un cupón aplicado y cuál fue.
WHERE cupon_usado = 'ULTIMO_SUSPIRO';
