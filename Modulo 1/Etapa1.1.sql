CREATE DATABASE IF NOT EXISTS Laboratorio;
USE Laboratorio;

CREATE TABLE Factura(
letra char(1),
numero int,
clienteID int,
articuloID int,
fecha date,
monto double,
primary key(letra,numero)
);

CREATE TABLE  Articulo(
articuloID int primary key,
nombre varchar(50),
precio double,
stock integer unsigned
);

CREATE TABLE Cliente(
clienteID int primary key, 
nombre varchar(25),
apellido varchar(25),
cuit char(16),
direccion varchar(50),
comentarios varchar(50)
);

show databases;
-- show tables;

describe Cliente;
