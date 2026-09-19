USE db_inventario_ventas;

-- ESCENARIO 3: Fallo por pago inválido (CHECK monto > 0)
-- Producto: Audífonos Bluetooth (id_producto = 4, stock disponible = 20)

START TRANSACTION;

INSERT INTO compras (total, estado) VALUES (599.00, 'pendiente');
SET @compra_id = LAST_INSERT_ID();

-- Descontar el stock 
UPDATE producto SET stock = stock - 1 WHERE id_producto = 4;

INSERT INTO detalle_compra (compra_id, producto_id, cantidad, precio_unitario)
VALUES (@compra_id, 4, 1, 599.00);

-- 4. Intentar registrar el pago con monto inválido. Debe rechazar por el CHECK (monto > 0). 
INSERT INTO pagos (compra_id, monto, metodo)
VALUES (@compra_id, 0.00, 'tarjeta');

ROLLBACK;