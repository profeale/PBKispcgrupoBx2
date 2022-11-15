INSERT
INTO usuarios (nombre, email, contraseña, dni, fk_provincia, fk_banco, cbu, fechaNacimiento)
VALUES('Cristian Vera', 'cristian@email.com', '12345678',12345678, 1, 1, 123456789, 01/01/1991);

SELECT *
FROM usuarios;

INSERT 
INTO bancos (nombre)
VALUES ('HSBC');

SELECT *
FROM bancos;

INSERT
INTO billeterasmonedas (fk_usuario, fk_moneda, cantidad)
VALUES (1,1,100);

SELECT *
FROM billeterasmonedas;

INSERT
INTO monedas (nombre, cotizacion, fecha_cotizacion)
VALUES ('bitcoin', 19000.50, 14/11/2022);

SELECT *
FROM monedas;

INSERT
INTO movimientos (fk_billeteraMoneda, cantidad, fecha, fk_tipoMovimiento, fk_monedaOrigen, fk_monedaDestino)
values (1,50,14/11/2022,1,1,2);

SELECT *
FROM movimientos;

INSERT
INTO paises (nombre)
values ('Argentina');

SELECT *
FROM paises;

INSERT
INTO provincias (nombre, fk_pais)
values ('Córdoba', 1);

SELECT *
FROM provincias;

INSERT 
INTO tipomovimientos (descripcion)
VALUES ('transferencia inmediata');

SELECT *
FROM tipomovimientos;

/* JOINS */

SELECT *
FROM usuarios us
inner join billeterasmonedas bm
on us.id = bm.fk_usuario;

SELECT * 
FROM movimientos mv
inner join tipomovimientos tmv
on mv.fk_tipomovimiento = tmv.id;