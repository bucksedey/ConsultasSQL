SELECT 
	"Proveedor".nombre AS "Nombre proveedor",
	"Producto".nombre AS "Nombre producto"
FROM("Producto" JOIN "Proveedor" ON
 		"Producto".idproveedor="Proveedor".idproveedor)

SELECT 
	"Proveedor".nombre AS "Nombre proveedor",
	"Producto".nombre AS "Nombre producto"
FROM("Producto" RIGHT JOIN "Proveedor" ON
 		"Producto".idproveedor="Proveedor".idproveedor)

SELECT 
	"Proveedor".nombre AS "Nombre proveedor",
	"Producto".nombre AS "Nombre producto"
FROM("Producto" LEFT JOIN "Proveedor" ON
 		"Producto".idproveedor="Proveedor".idproveedor)

SELECT 
	"Proveedor".nombre AS "Nombre proveedor",
	"Producto".nombre AS "Nombre producto"
FROM("Producto" RIGHT OUTER JOIN "Proveedor" ON
 		"Producto".idproveedor="Proveedor".idproveedor)

SELECT 
	"Producto".nombre AS "Nombre producto vendido"
FROM("Producto" JOIN "Venta" ON
 		"Venta".producto="Producto".nombre)

SELECT 
	"Producto".nombre AS "Nombre producto no vendido"
FROM("Producto" JOIN "Venta" ON
 		 "Venta".producto IS NULL)

SELECT 
	"Cliente".nombre, "Venta".fechaventa 
FROM("Cliente" JOIN "Venta" ON
 		 "Venta".idcliente = "Cliente".id)

SELECT 
	"Cliente".nombre
FROM ("Venta" LEFT JOIN "Cliente" ON
 		 "Venta".idcliente = "Cliente".id)
	WHERE "Venta".idventa IS NULL

SELECT "Proveedor".nombre
	FROM("Producto" JOIN "Proveedor"
		 ON "Producto".idproveedor = "Proveedor".idproveedor) 
			JOIN "ProductoVenta" ON "ProductoVenta".idproducto = "Producto".idproducto 
		
SELECT "Proveedor".nombre
	FROM("Producto" JOIN "Proveedor"
		 ON "Producto".idproveedor = "Proveedor".idproveedor) 
			FULL OUTER JOIN "ProductoVenta" ON "ProductoVenta".idproducto = "Producto".idproducto 

SELECT "Cliente".nombre, "Producto".nombre
	FROM("Venta" JOIN "Cliente"
		 ON "Venta".idcliente = "Cliente".id) 
			 JOIN "Producto" ON "Producto".nombre LIKE "Venta".producto

SELECT "Cliente".nombre, "Producto".nombre
	FROM("Venta" JOIN "Cliente"
		 ON "Venta".idcliente = "Cliente".id) 
			 JOIN "Producto" ON "Producto".nombre = "Venta".producto
	WHERE "Producto".nombre LIKE 'DvD'

SELECT "Cliente".nombre, "Proveedor".nombre
	FROM("Venta" JOIN "Cliente"
		 ON "Venta".idcliente = "Cliente".id) 
			 JOIN "Producto" ON "Producto".nombre = "Venta".producto
			 JOIN "Proveedor" ON "Proveedor".idproveedor = "Producto".idproveedor
	WHERE "Proveedor".nombre LIKE 'samsung'

SELECT "Cliente".nombre, "Producto".nombre
	FROM("Venta" JOIN "Cliente"
		 ON "Venta".idcliente = "Cliente".id) 
			 JOIN "Producto" ON "Producto".nombre = "Venta".producto
	WHERE "Producto".nombre LIKE 'DvD'

SELECT "Venta".nventa, COUNT (*)
	FROM("Venta" JOIN "Cliente"
		 ON "Venta".idcliente = "Cliente".id)
	GROUP BY "Venta".nventa

SELECT "Proveedor".idproveedor, COUNT (*) AS 'Productos vendidos por proveedor'
	FROM("Proveedor" JOIN "Producto"
		 ON "Producto".idproveedor = "Proveedor".idproveedor)
		 JOIN "ProductoVenta" ON "ProductoVenta".idproducto = "Producto".idproducto
		 GROUP BY "Proveedor".idproveedor

SELECT "Proveedor".idproveedor, COUNT (*) AS "Productos vendidos por proveedor"
	FROM("Proveedor" JOIN "Producto"
		 ON "Producto".idproveedor = "Proveedor".idproveedor)
		 JOIN "ProductoVenta" ON "ProductoVenta".idproducto = "Producto".idproducto
		 GROUP BY "Proveedor".idproveedor
	HAVING COUNT(*) > 2

SELECT "Proveedor".idproveedor, COUNT(*) AS "Proveedores con productos"
	FROM("Proveedor" JOIN "Producto"
		 ON "Producto".idproveedor = "Proveedor".idproveedor)
	GROUP BY "Proveedor".idproveedor
	HAVING COUNT(*) > 3

SELECT P1.nombre
FROM "Producto" as P1 INNER JOIN "Producto" as P2
ON P1.preciosugerido > P2.preciosugerido WHERE P2.idproducto = 2 		

SELECT C1.nombre
FROM "Cliente" as C1 INNER JOIN "Cliente" as C2
ON C1.credito > C2.credito WHERE C2.nombre LIKE 'Edgar'