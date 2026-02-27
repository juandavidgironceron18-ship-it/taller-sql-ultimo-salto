-- Ejercicio 22
-- Clasificar a los clientes según su nivel de gasto total
-- en categorías de Alto, Medio o Bajo valor.

-- Se selecciona el nombre del cliente, el total gastado
-- y una clasificación basada en dicho gasto.
SELECT c.nombre,
       SUM(v.total_venta) AS total_gastado,

       -- La expresión CASE permite clasificar a los clientes
       -- en función del dinero total que han gastado.
       CASE
           -- Clientes que han gastado más de 5000 unidades monetarias
           WHEN SUM(v.total_venta) > 5000 THEN 'Alto Valor'

           -- Clientes con gasto intermedio entre 2000 y 5000
           WHEN SUM(v.total_venta) BETWEEN 2000 AND 5000 THEN 'Medio Valor'

           -- Clientes con gasto menor a 2000
           ELSE 'Bajo Valor'
       END AS categoria_gasto
FROM clientes c

-- Se hace JOIN con ventas para poder sumar el total gastado
-- por cada cliente.
JOIN ventas v ON c.id_cliente = v.id_cliente

-- Se agrupan los resultados por cliente para calcular
-- el gasto total y asignar la categoría correspondiente.
GROUP BY c.id_cliente;
