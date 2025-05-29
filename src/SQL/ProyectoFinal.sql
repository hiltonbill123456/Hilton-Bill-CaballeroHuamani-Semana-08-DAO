CREATE DATABASE tienda;
USE tienda;

-- Crear tablas

CREATE TABLE CATEGORIA (
    idcat INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE PRODUCTO (
    idprod INT PRIMARY KEY,
    idcat INT,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10,2),
    stock INT,
    unidad VARCHAR(50),
    FOREIGN KEY (idcat) REFERENCES CATEGORIA(idcat)
);

CREATE TABLE SUCURSAL (
    idsucursal INT PRIMARY KEY,
    nombre VARCHAR(100),
    direccion VARCHAR(200),
    ciudad VARCHAR(100),
    telefono VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE INVENTARIO (
    idinv INT PRIMARY KEY,
    idprod INT,
    idsucursal INT,
    stock_actual INT,
    stock_minimo INT,
    FOREIGN KEY (idprod) REFERENCES PRODUCTO(idprod),
    FOREIGN KEY (idsucursal) REFERENCES SUCURSAL(idsucursal)
);

CREATE TABLE EMPLEADO (
    idemp INT PRIMARY KEY,
    idsucursal INT,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    dni VARCHAR(20),
    cargo VARCHAR(100),
    email VARCHAR(100),
    telefono VARCHAR(20),
    estado VARCHAR(50),
    FOREIGN KEY (idsucursal) REFERENCES SUCURSAL(idsucursal)
);

CREATE TABLE USUARIO (
    idemp INT PRIMARY KEY,
    usuario VARCHAR(50),
    clave VARCHAR(100),
    rol VARCHAR(50),
    estado VARCHAR(50),
    FOREIGN KEY (idemp) REFERENCES EMPLEADO(idemp)
);

CREATE TABLE CLIENTE (
    idcliente INT PRIMARY KEY,
    nombre VARCHAR(100),
    direccion VARCHAR(200),
    ciudad VARCHAR(100),
    telefono VARCHAR(20),
    email VARCHAR(100),
    dni_ruc VARCHAR(20),
    tipo_cliente VARCHAR(50)
);

CREATE TABLE VENTA (
    idventa INT PRIMARY KEY,
    idcliente INT,
    idemp INT,
    fecha DATE,
    tipo_pago VARCHAR(50),
    estado VARCHAR(50),
    total DECIMAL(10,2),
    observacion TEXT,
    FOREIGN KEY (idcliente) REFERENCES CLIENTE(idcliente),
    FOREIGN KEY (idemp) REFERENCES EMPLEADO(idemp)
);

CREATE TABLE DETALLE_VENTA (
    iddetalle INT PRIMARY KEY,
    idventa INT,
    idprod INT,
    cantidad INT,
    precio DECIMAL(10,2),
    subtotal DECIMAL(10,2),
    FOREIGN KEY (idventa) REFERENCES VENTA(idventa),
    FOREIGN KEY (idprod) REFERENCES PRODUCTO(idprod)
);
