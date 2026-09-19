USE db_inventario_ventas;

-- ESCENARIO 1: Compra exitosa (stock suficiente, pago válido)
-- Producto: Teclado mecánico (id_producto = 1, stock inicial = 15, precio = 899.00)

START TRANSACTION;

INSERT INTO compras (total, estado) VALUES (1798.00, 'completada');
SET @compra_id = LAST_INSERT_ID();

-- Descontar el stock del producto
UPDATE producto SET stock = stock - 2 WHERE id_producto = 1;

INSERT INTO detalle_compra (compra_id, producto_id, cantidad, precio_unitario)
VALUES (@compra_id, 1, 2, 899.00);

-- Registrar el pago (monto > 0, cumple el CHECK)
INSERT INTO pagos (compra_id, monto, metodo)
VALUES (@compra_id, 1798.00, 'tarjeta');

COMMIT;