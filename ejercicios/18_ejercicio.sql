-- Ejercicio 18
-- Identificar los clientes mayores de 60 años que han realizado compras,
-- mostrando su nombre, edad aproximada y el total gastado.

-- Se selecciona el nombre del cliente, se calcula su edad aproximada
-- y se suma el total de sus compras.
SELECT c.nombre,
       -- La edad se calcula restando el año de nacimiento
       -- al año actual. Es una edad aproximada porque no
       -- considera el mes y el día exactos.
       (strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento)) AS edad_aprox,
       SUM(v.total_venta) AS total_gastado
FROM clientes c

-- Se hace un JOIN entre clientes y ventas para considerar
-- únicamente clientes que han realizado al menos una compra.
JOIN ventas v ON c.id_cliente = v.id_cliente

-- Se agrupan los resultados por cliente para poder calcular
-- la suma total gastada por cada uno.
GROUP BY c.id_cliente

-- HAVING se utiliza en lugar de WHERE porque la condición
-- depende de un valor calculado (edad_aprox) y de una agregación.
-- Se filtran solo los clientes cuya edad aproximada es mayor o igual a 60.
HAVING edad_aprox >= 60;
