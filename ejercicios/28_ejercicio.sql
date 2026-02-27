-- Ejercicio 28
-- Identificar los clientes cuya última compra fue hace más de 180 días.

-- Se selecciona el nombre y correo del cliente,
-- junto con la fecha de su última compra.
SELECT c.nombre,
       c.correo,

       -- MAX(fecha_venta) permite obtener la fecha
       -- de la compra más reciente de cada cliente.
       MAX(v.fecha_venta) AS ultima_compra
FROM clientes c

-- Se realiza un JOIN con ventas para asociar
-- cada cliente con sus compras realizadas.
JOIN ventas v ON c.id_cliente = v.id_cliente

-- Se agrupan los resultados por cliente para poder
-- calcular la última compra de cada uno.
GROUP BY c.id_cliente

-- HAVING se utiliza porque la condición depende
-- de un valor agregado (MAX(fecha_venta)).
-- Se comparan las fechas con la fecha actual menos 180 días,
-- identificando clientes inactivos por más de 6 meses.
HAVING MAX(v.fecha_venta) < DATE('now', '-180 days');
