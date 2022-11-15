create database if not exists criptech;
use criptech;

CREATE TABLE IF NOT EXISTS usuarios (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150),
    email VARCHAR(150),
    contraseña VARCHAR(8),
    dni INT(10),
    fk_provincia INT,
    fk_banco INT,
    cbu BIGINT,
    fechaNacimiento DATE
);

CREATE TABLE IF NOT EXISTS billeterasMonedas (
	id INT AUTO_INCREMENT PRIMARY KEY,
    fk_usuario INT,
    fk_moneda INT,
    cantidad INT
);

CREATE TABLE IF NOT EXISTS monedas (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150),
	cotizacion FLOAT(12,4),
    fecha_cotizacion DATE
);

CREATE TABLE IF NOT EXISTS movimientos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    fk_billeteraMoneda INT,
    cantidad INT,
    fecha DATE,
	fk_tipoMovimiento INT,
    fk_monedaOrigen INT,
    fk_monedaDestino INT
);

CREATE TABLE IF NOT EXISTS tipoMovimientos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(250)
);

CREATE TABLE IF NOT EXISTS paises (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS provincias (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    fk_pais int
);

CREATE TABLE IF NOT EXISTS bancos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
);