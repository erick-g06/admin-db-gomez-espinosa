USE db_inventario_ventas;

-- ESCENARIO 2: Fallo por violación de stock (CHECK stock >= 0)
-- Producto: Monitor 24 pulgadas (id_producto = 3, stock disponible = 5)

START TRANSACTION;

INSERT INTO compras (total, estado) VALUES (32990.00, 'pendiente');
SET @compra_id = LAST_INSERT_ID();

-- Intentar descontar más stock del disponible
UPDATE producto SET stock = stock - 10 WHERE id_producto = 3;

ROLLBACK;