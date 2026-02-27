-- Ejercicio 17
-- Calcular el dinero que la tienda dejó de ingresar
-- debido al uso del cupón ULTIMO_SUSPIRO.

-- Se utiliza SUM para acumular el dinero "perdido" en todas las ventas
-- donde se aplicó el cupón.
-- El cálculo (total_venta / 0.70) obtiene el precio original antes del descuento,
-- asumiendo que el cupón aplica un 30% de descuento.
-- Al restar el total_venta (precio con descuento),
-- se obtiene el valor que la tienda dejó de recibir por cada venta.
SELECT SUM((total_venta / 0.70) - total_venta) AS dinero_perdido
FROM ventas

-- Se filtran únicamente las ventas en las que se utilizó
-- el cupón ULTIMO_SUSPIRO.
WHERE cupon_usado = 'ULTIMO_SUSPIRO';
