SELECT nombre
	FROM "Producto"
		 WHERE preciosugerido < (SELECT preciosugerido 
								 	FROM "Producto"
								WHERE idproducto = 1
								)

SELECT nombre, preciosugerido 
	FROM "Producto"
		ORDER BY preciosugerido DESC

SELECT nombre, credito
	FROM "Cliente"
		WHERE credito > (SELECT AVG(credito) FROM "Cliente") 

SELECT nombre, deuda
	FROM "Cliente"
		WHERE deuda > (SELECT deuda FROM "Cliente"
					  	WHERE nombre LIKE 'Edgar'
					  ) 

SELECT nombre, credito
	FROM "Cliente"
		WHERE credito = (SELECT MAX(credito) FROM "Cliente")
        
SELECT nombre
	FROM "Cliente"
		WHERE id NOT IN (SELECT DISTINCT idcliente FROM "Venta" 
						WHERE 
						idventa = (SELECT DISTINCT idventa FROM "ProductoVenta"
									WHERE 
									idproducto = (SELECT idproducto FROM "Producto" WHERE idproducto = 2)
								  )				   
				   )

SELECT id
	FROM "Cliente"
WHERE id NOT IN (SELECT idcliente FROM "Venta")

SELECT DISTINCT delegacion
	FROM "Cliente"
WHERE id NOT IN (SELECT idcliente FROM "Venta")

SELECT nombre
	FROM "Producto"
		WHERE idproducto IN (SELECT DISTINCT idproducto FROM "ProductoVenta"
									WHERE 
									idproducto IN (SELECT idproducto FROM "Producto" WHERE idproducto = 2)
							)		
					
SELECT nombre
	FROM "Producto"
		WHERE idproducto IN (SELECT idproducto FROM "ProductoVenta"
									WHERE 
									idventa IN (SELECT idventa FROM "Venta" WHERE (preciounit*cantidad) < 15000 GROUP BY idventa)
							)				   

SELECT nombre
	FROM "Producto"
		WHERE idproducto IN (SELECT idproducto FROM "ProductoVenta"
									WHERE 
									idventa IN (SELECT idventa FROM "Venta" 
												WHERE 
											   		idcliente IN (SELECT id FROM "Cliente" WHERE credito < 10000)
												GROUP BY idventa
											   )
							)		

SELECT nombre
	FROM "Producto"
		WHERE idproducto IN (SELECT DISTINCT idproducto FROM "ProductoVenta"
							WHERE 
							idproducto IN (SELECT idproducto FROM "Producto" WHERE idproducto = 2 AND (SELECT nombre FROM "Cliente" WHERE credito > AVG(credito)))
							)			
							
SELECT delegacion, COUNT(*) as num_clientes
	FROM "Cliente"
		GROUP BY delegacion
		ORDER BY num_clientes ASC
		LIMIT 1;

SELECT delegacion, SUM(ven.idventa) as total_ventas
	FROM "Cliente" cli
		JOIN "Venta" ven ON cli.id = ven.idcliente
			GROUP BY delegacion
			ORDER BY total_ventas DESC
			LIMIT 1;

SELECT s.nombre, SUM(pv.idproducto) as total_vendido
	FROM "Proveedor" s
		JOIN "Producto" p ON s.idproveedor = p.idproveedor
		JOIN "ProductoVenta" pv ON p.idproducto = pv.idproducto
		JOIN "Venta" v ON pv.idventa = v.idventa
		JOIN "Cliente" c ON v.idcliente = c.id
GROUP BY s.nombre
ORDER BY total_vendido DESC
LIMIT 1;