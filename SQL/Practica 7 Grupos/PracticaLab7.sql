SELECT SUM(preciounit*cantidad) AS "Ventas totales"
	FROM "Venta"

SELECT SUM(preciounit*cantidad)  AS "Total de cada venta", nventa
	FROM "Venta"
GROUP BY nventa

SELECT MAX(preciounit), MIN(preciounit), AVG(preciounit) 
	FROM "Venta"

SELECT COUNT(*)
	FROM "Cliente"

SELECT COUNT(*), delegacion
	FROM "Cliente"
GROUP BY delegacion

SELECT COUNT(idproducto) AS "Total de productos diferentes"
	FROM "Producto"
WHERE existencia IS NOT NULL

SELECT COUNT(idproveedor) AS "Numero de proveedores"
	FROM "Proveedor"

SELECT COUNT(idproducto), idproveedor
	FROM "Producto"
GROUP BY idproveedor
	
SELECT COUNT(*) AS "N. de clientes con credito mayor a 5000"
	FROM "Cliente"
WHERE credito > 5000

SELECT COUNT(*) AS "N. de clientes con credito mayor a 5000", delegacion
	FROM "Cliente"
WHERE credito > 5000
GROUP BY delegacion

SELECT COUNT(*) AS "N. de clientes de la GAM o Iztacalco"
	FROM "Cliente"
WHERE delegacion = 'GAM' OR delegacion = 'Iztacalco'

SELECT MIN(credito) AS "Credito mas bajo", MAX(credito) AS "Credito mas alto", AVG(credito) AS "Promedio de creditos"
	FROM "Cliente"

SELECT MIN(credito) AS "Credito mas bajo por delegacion", MAX(credito) AS "Credito mas alto por delegacion", AVG(credito) AS "Promedio de creditos por delegacion", delegacion
	FROM "Cliente"
GROUP BY delegacion

SELECT MIN(deuda) AS "Deuda mas baja", MAX(deuda) AS "Deuda mas alta", AVG(deuda) AS "Promedio de deuda"
	FROM "Cliente"

SELECT MIN(deuda) AS "Deuda mas baja por delegacion", MAX(deuda) AS "Deuda mas alta por delegacion", AVG(deuda) AS "Promedio de deuda por delegacion", delegacion
	FROM "Cliente"
GROUP BY delegacion

SELECT COUNT(EXTRACT(YEAR FROM fechanac)), EXTRACT(YEAR FROM fechanac)
	FROM "Cliente"
GROUP BY EXTRACT(YEAR FROM fechanac)
HAVING COUNT(EXTRACT(YEAR FROM fechanac)) > 3

SELECT delegacion, COUNT(*) AS "N. de Clientes", ROUND (AVG(EXTRACT(YEAR FROM AGE(NOW(),fechanac))), 1) AS "Promedio Edad"
	FROM "Cliente"
GROUP BY delegacion

SELECT EXTRACT(YEAR FROM AGE(NOW(),fechanac)) AS "Edad" ,COUNT(*) AS "N. de Clientes"
	FROM "Cliente"
GROUP BY EXTRACT(YEAR FROM AGE(NOW(),fechanac))

SELECT delegacion, COUNT(*) AS "Total Clientes" , MIN(deuda) AS "Menor deuda", MAX(deuda) AS "Mayor deuda", AVG(credito) AS "Promedio Credito", ROUND (AVG(EXTRACT(YEAR FROM AGE(NOW(),fechanac))),1)AS "Promedio edad" 
	FROM "Cliente"
GROUP BY delegacion

SELECT delegacion, EXTRACT(YEAR FROM AGE(NOW(),fechanac)) AS "Edad", COUNT(*) AS "# Clientes" 
	FROM "Cliente"
GROUP BY EXTRACT(YEAR FROM AGE(NOW(),fechanac)), delegacion