-- Ejercicio 28
-- Clientes cuya última compra fue hace más de 180 días

SELECT c.nombre,
       c.correo,
       MAX(v.fecha_venta) AS ultima_compra
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
HAVING MAX(v.fecha_venta) < DATE('now', '-180 days');