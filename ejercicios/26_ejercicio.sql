-- Ejercicio 26
-- Identificar los clientes que compraron exclusivamente productos
-- de la categoría Paracaídas (es decir, no compraron accesorios ni otros productos).

-- Se selecciona el nombre del cliente y el total de dinero gastado
-- en todas sus compras.
SELECT c.nombre,
       SUM(v.total_venta) AS total_gastado
FROM clientes c

-- Se hace JOIN con ventas para relacionar cada cliente
-- con sus transacciones realizadas.
JOIN ventas v ON c.id_cliente = v.id_cliente

-- Se hace JOIN con detalle_ventas para acceder a los productos
-- incluidos en cada venta.
JOIN detalle_ventas dv ON v.id_venta = dv.id_venta

-- Se hace JOIN con productos para poder conocer la categoría
-- de cada producto comprado.
JOIN productos p ON dv.id_producto = p.id_producto

-- Se agrupan los resultados por cliente para poder evaluar
-- el conjunto total de productos que ha comprado cada uno.
GROUP BY c.id_cliente

-- La cláusula HAVING se utiliza para filtrar a los clientes
-- que NO han comprado ningún producto de la categoría Accesorios.
-- La expresión CASE cuenta cuántos productos de tipo Accesorios
-- ha comprado cada cliente.
-- Si la suma es 0, significa que el cliente compró únicamente Paracaídas.
HAVING SUM(
    CASE
        WHEN p.categoria LIKE '%Accesor%' THEN 1
        ELSE 0
    END
) = 0;
