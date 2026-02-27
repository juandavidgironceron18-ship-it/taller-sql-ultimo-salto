-- Ejercicio 4
-- Calcular el número total de transacciones de venta registradas en la base de datos.

-- Se utiliza COUNT(*) para contar todas las filas de la tabla ventas,
-- ya que cada fila representa una transacción realizada.
-- No se aplica ningún filtro porque se requiere el total histórico de ventas.

SELECT COUNT(*) AS total_transacciones
FROM ventas;
