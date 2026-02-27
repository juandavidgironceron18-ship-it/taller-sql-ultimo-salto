-- Ejercicio 1
-- Este ejercicio busca conocer cuántos clientes están registrados en la base de datos

-- Se utiliza COUNT(*) para contar el número total de filas en la tabla clientes,
-- ya que cada fila representa un cliente registrado.
-- No se usa WHERE porque se quieren contar todos los clientes sin excepción.

SELECT COUNT(*) AS total_clientes
FROM clientes;
