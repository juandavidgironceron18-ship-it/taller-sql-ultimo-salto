-- Ejercicio 7
-- Listar los productos de la categoría Accesorios cuyo precio
-- sea menor a 500 unidades monetarias.

-- Se seleccionan las columnas nombre y precio porque son los datos
-- necesarios para identificar el accesorio y conocer su costo.
SELECT nombre, precio
FROM productos

-- Se filtra por la categoría Accesorios.
-- Se utiliza LIKE para evitar problemas con mayúsculas,
-- tildes o variaciones en el texto almacenado en la base de datos.
WHERE categoria LIKE '%Accesorios%'

-- Se añade una segunda condición con AND para limitar los resultados
-- únicamente a los productos cuyo precio sea inferior a 500.
  AND precio < 500;
