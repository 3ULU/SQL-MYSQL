CREATE DATABASE IF NOT EXISTS db_empresa;
USE db_empresa;

CREATE TABLE IF NOT EXISTS inventarios(
    idInventario INT PRIMARY KEY AUTO_INCREMENT,
    codigoProducto VARCHAR(50) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    fechaFabricacion DATE,
    fechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cantidadProducto INT DEFAULT 0,
    precioCompra DECIMAL(10,2) NOT NULL,
    precioVenta DECIMAL(10,2) NOT NULL
);

INSERT INTO inventarios (codigoProducto,nombre,descripcion,fechaFabricacion,cantidadProducto,precioCompra,precioVenta)
VALUES ('PROD001','Laptop HP','Laptop HP con procesador Intel i7', '16GB RAM','2024-01-10',10,800.00,1200.00);

INSERT INTO inventarios (codigoProducto,nombre,descripcion,fechaFabricacion,cantidadProducto,precioCompra,precioVenta)
VALUES
('PROD002', 'Monitor Samsung 24', 'Monitor LED Samsung de 24 pulgadas', '2024-02-15', 25, 120.00, 180.00),
('PROD003', 'Mouse Logitech', 'Mouse inalámbrico Logitech', '2024-03-01', 50, 15.00, 30.00),
('PROD004','Teclado Mecánico', 'Teclado mecánico retroiluminado RGB', '2024-03-10', 40, 60.00, 100.00),
('PROD005', 'Auriculares Sony', 'Auriculares inalámbricos Sony con cancelación de ruido', '2024-04-05', 30, 80.00, 150.00);

/*Imagina que recibes un lote adicional de 20 laptops y necesitas actualizar la cantidad:*/
UPDATE inventarios
SET cantidadProducto = cantidadProducto + 20 
WHERE codigoProducto = 'PROD001';
/*Supón que decides aumentar el precio de venta de todos los productos en un 10%:*/
UPDATE inventarios
SET precioVenta = precioVenta * 1.10;

/*Digamos que decides retirar un producto
que ya no vendes más:*/
DELETE FROM inventarios
WHERE codigoProducto = 'PROD004'; = PROD004
/*Supón que quieres limpiar tu inventario
de productos agotados:*/
DELETE FROM inventarios
WHERE cantidadProducto 0;
