-- Ejercicio 11
-- Calcular el número total de líneas de detalle de ventas registradas.

-- Se utiliza COUNT(*) para contar todas las filas de la tabla detalle_ventas,
-- ya que cada fila representa una línea de detalle asociada a una venta
-- (por ejemplo, un producto vendido dentro de una transacción).
-- No se aplica ningún filtro porque se desea obtener el total general
-- de líneas de venta registradas.

SELECT COUNT(*) AS total_lineas_venta
FROM detalle_ventas;
