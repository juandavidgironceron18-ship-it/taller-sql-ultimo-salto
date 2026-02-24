-- Ejercicio 18
-- Clientes mayores de 60 años con compras

SELECT c.nombre,
       (strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento)) AS edad_aprox,
       SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
HAVING edad_aprox >= 60;