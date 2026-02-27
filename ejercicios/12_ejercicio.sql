-- Ejercicio 12
-- Calcular el precio promedio de todos los productos disponibles en la tienda.

-- Se utiliza la función AVG para obtener el valor promedio
-- de la columna precio, la cual almacena el costo de cada producto.
-- No se usa WHERE porque se desea considerar todos los productos
-- sin aplicar ningún tipo de filtro.

SELECT AVG(precio) AS precio_promedio
FROM productos;
