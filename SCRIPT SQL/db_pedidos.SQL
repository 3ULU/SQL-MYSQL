CREATE DATABASE db_pedidos;
USE db_pedidos;

CREATE TABLE clientes (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE productos (
    idProducto INT PRIMARY KEY AUTO_INCREMENT,
    nombreProducto VARCHAR(100) NOT NULL,
    precio DECIMAL(8,2) NOT NULL
);

CREATE TABLE ventas (
    idVenta INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT,
    idProducto INT,
    cantidad INT NOT NULL,
    totalVenta DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES clientes(idCliente),
    FOREIGN KEY (idProducto) REFERENCES productos(idProducto)
);