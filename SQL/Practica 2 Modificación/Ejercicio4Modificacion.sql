CREATE TABLE Clientes
(
	idCliente int,
	Nombre varchar(30)
);

SELECT * FROM Clientes

INSERT INTO clientes(idcliente,nombre)
		VALUES(1,'Pedro');
INSERT INTO clientes(idcliente,nombre)
		VALUES(2,'Carla');
INSERT INTO clientes(idcliente,nombre)
		VALUES(3,'Samantha');
INSERT INTO clientes(idcliente,nombre)
		VALUES(4,'Juan');
INSERT INTO clientes(idcliente,nombre)
		VALUES(5,'Carlos');
INSERT INTO clientes(idcliente,nombre)
		VALUES(6,'Daniela');
INSERT INTO clientes(idcliente,nombre)
		VALUES(7,'Erick');
INSERT INTO clientes(idcliente,nombre)
		VALUES(8,'Paola');
INSERT INTO clientes(idcliente,nombre)
		VALUES(9,'Marco');
INSERT INTO clientes(idcliente,nombre)
		VALUES(10,'Yael');
		
CREATE TABLE Proveedores
(
	idProveedor int,
	Nombre varchar(30)
);

SELECT * FROM Proveedores

INSERT INTO Proveedores(idProveedor,nombre)
		VALUES(1,'lg');
INSERT INTO Proveedores(idProveedor,nombre)
		VALUES(2,'yamaha');
INSERT INTO Proveedores(idProveedor,nombre)
		VALUES(3,'samsung');
INSERT INTO Proveedores(idProveedor,nombre)
		VALUES(4,'sony');
INSERT INTO Proveedores(idProveedor,nombre)
		VALUES(5,'dell');
INSERT INTO Proveedores(idProveedor,nombre)
		VALUES(6,'HP');
		
CREATE TABLE Productos
(
	Idproducto int, 
	idProveedor int, 
	nombre varchar(20), 
	existencia int, 
	PrecioSugerido int, 
	PrecioMinimo int, 
	PrecioCompra int
);

SELECT * FROM Productos

INSERT INTO productos(Idproducto, idProveedor, nombre, existencia, PrecioSugerido, PrecioMinimo, PrecioCompra)
		VALUES(1, 1, 'Tele', 30, 5000,4000, 3000);
INSERT INTO productos(Idproducto, idProveedor, nombre, existencia, PrecioSugerido, PrecioMinimo, PrecioCompra)
		VALUES(2, 1, 'DVd', 20, 1500, 1000, 900);
INSERT INTO productos(Idproducto, idProveedor, nombre, existencia, PrecioSugerido, PrecioMinimo, PrecioCompra)
		VALUES(3, 1, 'Celular', 3, 2000,2000, 1200);
INSERT INTO productos(Idproducto, idProveedor, nombre, existencia, PrecioSugerido, PrecioMinimo, PrecioCompra)
		VALUES(4, 2, 'Pantalla', 5, 15000,14000, 10000);
INSERT INTO productos(Idproducto, idProveedor, nombre, existencia, PrecioSugerido, PrecioMinimo, PrecioCompra)
		VALUES(5, 2, 'BlueRay', 10, 5500,5300, 5000);
INSERT INTO productos(Idproducto, idProveedor, nombre, existencia, PrecioSugerido, PrecioMinimo, PrecioCompra)
		VALUES(6, 3, 'Mp3 Player', 13, 900, 900, 500);
INSERT INTO productos(Idproducto, idProveedor, nombre, existencia, PrecioSugerido, PrecioMinimo, PrecioCompra)
		VALUES(7, NULL, 'Compu', 15, 19000, 17000, 115000);
		
CREATE TABLE Ventas
(
	nVenta int,
	idCliente int,
	fechaVenta date,
	producto varchar(20),
	cantidad int,
	precioUnit int
);

SELECT * FROM Ventas

INSERT INTO ventas(nventa,idcliente,fechaVenta,producto,cantidad,preciounit)
		VALUES(1,2,'2020-09-05','Celular',2,2000);
INSERT INTO ventas(nventa,idcliente,fechaVenta,producto,cantidad,preciounit)
		VALUES(1,2,'2020-09-05','Mp3 Player',1,900);
INSERT INTO ventas(nventa,idcliente,fechaVenta,producto,cantidad,preciounit)
		VALUES(1,2,'2020-09-05','BlueRay',3,5500);

INSERT INTO ventas(nventa,idcliente,fechaVenta,producto,cantidad,preciounit)
		VALUES(2,5,'2020-09-17','BlueRay',2,5500);
INSERT INTO ventas(nventa,idcliente,fechaVenta,producto,cantidad,preciounit)
		VALUES(2,5,'2020-09-17','Tele',1,5000);

INSERT INTO ventas(nventa,idcliente,fechaVenta,producto,cantidad,preciounit)
		VALUES(3,2,'2020-09-17','Pantalla',2,15000);