--Ejercicio SQL 1: Selección de Clientes Activos
SELECT nombre, correo_electronico
FROM Cliente
WHERE estado = 'activo';

--Ejercicio SQL 2: Contar Pedidos por Cliente
SELECT c.nombre, COUNT(p.id_pedido) AS total_pedidos
FROM Cliente AS c
LEFT JOIN Pedido AS p 
  ON c.id_cliente = p.id_cliente
GROUP BY c.nombre;

--Ejercicio SQL 3: Encontrar el Producto Más Vendido
SELECT pr.nombre
FROM Producto AS pr
JOIN DetallePedido AS dp 
  ON pr.id_producto = dp.id_producto
GROUP BY pr.nombre
ORDER BY SUM(dp.cantidad) DESC
LIMIT 1;

--Ejercicio SQL 4: Actualizar el Estado de Pedidos Antiguos
UPDATE Pedido
SET estado = 'archivado'
WHERE fecha_pedido < '2024-01-01';