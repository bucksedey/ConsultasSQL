SELECT * FROM "Cliente"

SELECT nombre, deuda, delegacion
FROM "Cliente"
WHERE nombre != 'Frieda'

SELECT nombre, deuda 
FROM "Cliente"
	WHERE deuda <=4000
	

SELECT nombre, deuda 
FROM "Cliente"
	WHERE deuda is NULL
	
SELECT nombre, deuda 
FROM "Cliente"
	WHERE NOT deuda IS NULL

SELECT nombre, estado
FROM "Cliente"
	WHERE (estado = 'Mexico' AND deuda >2000)
		OR (estado = 'Veracruz') AND deuda IS NULL
		
SELECT nombre, estado
FROM "Cliente"
	WHERE estado = 'Mexico' OR estado = 'Veracruz' AND deuda IS NULL
	
SELECT nombre
	FROM "Cliente"
		WHERE nombre LIKE '%a%'