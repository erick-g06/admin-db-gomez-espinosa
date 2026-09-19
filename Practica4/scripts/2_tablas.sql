USE db_inventario_ventas;

CREATE TABLE producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    stock INT NOT NULL CHECK (stock >= 0),
    precio DECIMAL(10, 2) NOT NULL CHECK (precio > 0)
) ENGINE=InnoDB;


CREATE TABLE compras (
    id_compras INT AUTO_INCREMENT PRIMARY KEY,
    total DECIMAL(10, 2) NOT NULL CHECK (total >= 0),
    fecha DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(20) NOT NULL DEFAULT 'pendiente'
) ENGINE=InnoDB;


CREATE TABLE detalle_compra (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    compra_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0),
    precio_unitario DECIMAL(10, 2) NOT NULL CHECK (precio_unitario > 0),
    FOREIGN KEY (compra_id) REFERENCES compras(id_compras),
    FOREIGN KEY (producto_id) REFERENCES producto(id_producto)
) ENGINE=InnoDB;


CREATE TABLE pagos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    compra_id INT NOT NULL,
    monto DECIMAL(10, 2) NOT NULL CHECK (monto > 0),
    fecha DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    metodo VARCHAR(50) NOT NULL,
    FOREIGN KEY (compra_id) REFERENCES compras(id_compras)
) ENGINE=InnoDB;