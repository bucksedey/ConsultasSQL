SELECT nombre 
	FROM "Cliente"
	    WHERE nombre = 'Edgar'

SELECT nombre 
	FROM "Cliente"
	    WHERE NOT nombre = 'Edgar'

SELECT nombre, credito
	FROM "Cliente"
		WHERE credito > 5000

SELECT nombre, credito 
	FROM "Cliente"
		WHERE credito < 5000

SELECT nombre, delegacion
	FROM "Cliente"
		WHERE delegacion = 'Iztacalco'

SELECT nombre, PrecioSugerido
	FROM "Producto"
		WHERE PrecioSugerido > 5000

SELECT nombre, existencia
	FROM "Producto"
		WHERE existencia < 5

SELECT nombre, deuda/6 AS "Pago Mensual"
	FROM "Cliente"
		WHERE deuda/6 > 1000

SELECT nombre, credito-deuda AS "Credito Disponible"
	FROM "Cliente"
		WHERE credito-deuda <= 3000

SELECT nombre, deuda+deuda*.20 AS "Deuda + 20%"
	FROM "Cliente"
		WHERE deuda+deuda*.20 > 20000

SELECT nombre, deuda-deuda*.20 AS "Deuda - 20%"
	FROM "Cliente"
		WHERE deuda-deuda*.20 < 10000

------------------------------------------------------------------------------

SELECT nombre, credito
	FROM "Cliente"
		WHERE credito IS NULL

SELECT nombre, rfc
	FROM "Cliente"
		WHERE rfc IS NULL

SELECT nombre, apmaterno
	FROM "Cliente"
		WHERE apmaterno IS NULL

SELECT nombre, email
	FROM "Cliente"
		WHERE NOT email IS NULL

SELECT nombre, preciosugerido
	FROM "Producto"
		WHERE NOT preciosugerido IS NULL

SELECT nombre, delegacion
	FROM "Cliente"
		WHERE delegacion IS NULL

----------------------------------------------------------------------------

SELECT nombre, delegacion
	FROM "Cliente"
		WHERE NOT delegacion = 'Iztacalco'

SELECT nombre
	FROM "Cliente"
		WHERE NOT nombre = 'Edgar'
	
SELECT nombre
	FROM "Cliente"
		WHERE nombre = 'Edgar' OR nombre = 'Juan'

SELECT nombre
	FROM "Cliente"
		WHERE NOT (nombre = 'Edgar' OR nombre = 'Juan')

SELECT nombre, credito
	FROM "Cliente"
		WHERE credito >= 5000 AND credito <= 10000

SELECT nombre, credito
	FROM "Cliente"
		WHERE NOT credito >= 5000 AND credito <= 10000

SELECT nombre, appaterno
	FROM "Cliente"
		WHERE nombre = 'Edgar' AND appaterno = 'Catalan'

SELECT nombre, appaterno
	FROM "Cliente"
		WHERE nombre != 'Edgar' AND appaterno = 'Catalan'

SELECT nombre, appaterno
	FROM "Cliente"
		WHERE nombre = 'Blanca' OR appaterno = 'Catalan'

SELECT nombre, appaterno, apmaterno
	FROM "Cliente"
		WHERE apmaterno = 'Catalan' OR appaterno = 'Catalan'

SELECT nombre, appaterno, apmaterno
	FROM "Cliente"
		WHERE NOT (apmaterno = 'Catalan' OR appaterno = 'Catalan')

SELECT nombre, appaterno
	FROM "Cliente"
		WHERE appaterno = 'Catalan' OR appaterno = 'Perez'

SELECT nombre, appaterno
	FROM "Cliente"
		WHERE appaterno = 'Catalan' OR appaterno = 'Perez' OR appaterno = 'Garcia'

SELECT nombre, appaterno, apmaterno
	FROM "Cliente"
		WHERE (appaterno = 'Catalan' OR appaterno = 'Perez') OR (apmaterno = 'Catalan' OR apmaterno = 'Perez')

SELECT nombre, appaterno
	FROM "Cliente"
		WHERE nombre = 'Edgar' AND (appaterno = 'Catalan' OR appaterno = 'Perez')

SELECT nombre, appaterno
	FROM "Cliente"
		WHERE nombre = 'Edgar' AND NOT (appaterno = 'Catalan' OR appaterno = 'Perez')

SELECT nombre, delegacion
	FROM "Cliente"
		WHERE delegacion = 'Iztacalco' OR delegacion = 'GAM' OR delegacion = 'bendito Juarez'
		
SELECT nombre, appaterno, delegacion
	FROM "Cliente"
		WHERE (delegacion = 'Iztacalco' OR delegacion = 'GAM') AND appaterno = 'Catalan'

SELECT nombre, delegacion, credito
	FROM "Cliente"
		WHERE delegacion = 'Iztacalco' AND credito BETWEEN 5000 AND 10000

SELECT nombre, delegacion, credito
	FROM "Cliente"
		WHERE (delegacion = 'Iztacalco' OR delegacion = 'Coyoacan') AND credito BETWEEN 10000 AND 20000

SELECT nombre, delegacion, appaterno, apmaterno
	FROM "Cliente"
		WHERE (delegacion = 'Iztacalco' OR delegacion = 'GAM') AND (appaterno = 'Catalan' OR apmaterno = 'Catalan')

SELECT nombre, appaterno, apmaterno
	FROM "Cliente"
		WHERE nombre = 'Edgar' AND (appaterno = 'Perez' OR appaterno = 'Catalan' OR apmaterno = 'Perez' OR apmaterno = 'Catalan')

SELECT nombre, delegacion, deuda/6 AS "Pago a 6 meses"
	FROM "Cliente"
		WHERE delegacion = 'Iztacalco' AND deuda/6 >= 1000

SELECT nombre, delegacion, credito
	FROM "Cliente"
		WHERE delegacion = 'Iztacalco' AND credito IS NULL

SELECT nombre, delegacion, credito-deuda AS "Credito Disponible"
	FROM "Cliente"
		WHERE delegacion = 'Iztacalco' AND credito-deuda > 10000

SELECT nombre, delegacion, apmaterno, credito
	FROM "Cliente"
		WHERE delegacion = 'Iztacalco' AND apmaterno IS NULL OR credito IS NULL

SELECT nombre, delegacion, apmaterno, credito
	FROM "Cliente"
		WHERE delegacion = 'Iztacalco' OR delegacion = 'GAM' AND apmaterno IS NULL OR credito IS NULL

---------------------------------------------------------------------------------

SELECT nombre, credito
	FROM "Cliente"
		WHERE credito BETWEEN 5000 AND 10000

SELECT nombre, delegacion
	FROM "Cliente"
		WHERE delegacion IN ('Iztacalco','Coyoacan','Benito Juarez')

SELECT nombre, deuda, deuda/12 AS "Pago mensual a 12 meses"
	FROM "Cliente"
		WHERE (deuda BETWEEN 10000 AND 15000) AND (deuda/12 BETWEEN 500 AND 1000)

SELECT nombre, delegacion, deuda
	FROM "Cliente"
		WHERE delegacion IN ('Iztacalco','Coyoacan','Benito Juarez') AND deuda BETWEEN 10000 AND 15000

SELECT nombre, delegacion, appaterno
	FROM "Cliente"
		WHERE delegacion IN ('Iztacalco','Coyoacan','Benito Juarez') AND appaterno = 'Catalan'

SELECT nombre, delegacion, appaterno, apmaterno
	FROM "Cliente"
		WHERE delegacion IN ('Iztacalco','Coyoacan','Benito Juarez') AND appaterno = 'Catalan' OR apmaterno = 'Catalan'

SELECT nombre, delegacion, appaterno, apmaterno
	FROM "Cliente"
		WHERE delegacion IN ('Iztacalco','Coyoacan','Benito Juarez') AND appaterno IN ('Catalan','Perez','Garcia') OR apmaterno IN ('Catalan','Perez','Garcia')

--------------------------------------------------------------------------------		

SELECT nombre
	FROM "Cliente"
		WHERE nombre LIKE '%Edgar%'

SELECT nombre
	FROM "Cliente"
		WHERE nombre LIKE '_d%'

SELECT nombre
	FROM "Cliente"
		WHERE nombre LIKE 'A%' 
			OR nombre LIKE 'E%' 
			OR nombre LIKE 'I%' 
			OR nombre LIKE 'O%' 
			OR nombre LIKE 'U%'

SELECT nombre
	FROM "Cliente"
		WHERE NOT (nombre LIKE 'A%' 
			OR nombre LIKE 'E%' 
			OR nombre LIKE 'I%' 
			OR nombre LIKE 'O%' 
			OR nombre LIKE 'U%')

SELECT nombre
	FROM "Cliente"
		WHERE nombre LIKE '%r'

SELECT nombre
	FROM "Cliente"
		WHERE (nombre LIKE 'A%' 
			OR nombre LIKE 'E%' 
			OR nombre LIKE 'I%' 
			OR nombre LIKE 'O%' 
			OR nombre LIKE 'U%')
			AND nombre LIKE '%h'

SELECT nombre
	FROM "Cliente"
		WHERE nombre LIKE '__g%'

SELECT nombre
	FROM "Cliente"
		WHERE nombre LIKE 'E___a%'

SELECT nombre
	FROM "Cliente"
		WHERE nombre LIKE '%E%' OR nombre LIKE '%e%'

SELECT nombre
	FROM "Cliente"
		WHERE nombre LIKE '%e%e%'

SELECT nombre
	FROM "Cliente"
		WHERE nombre SIMILAR TO '%[AEIOUaeiou]%[AEIOUaeiou]%'

SELECT nombre
	FROM "Cliente"
		WHERE nombre NOT SIMILAR TO '%[AEIOUaeiou]%[AEIOUaeiou]%'

SELECT nombre, appaterno
	FROM "Cliente"
		WHERE nombre = 'Edgar' AND appaterno LIKE 'C%'

SELECT nombre, appaterno, apmaterno
	FROM "Cliente"
		WHERE nombre = 'Edgar' AND (appaterno LIKE 'C%' OR apmaterno LIKE 'C%')

SELECT nombre, appaterno, apmaterno
	FROM "Cliente"
		WHERE appaterno SIMILAR TO '[A-M]%' OR apmaterno SIMILAR TO '[A-M]%'

SELECT nombre, appaterno
	FROM "Cliente"
		WHERE appaterno SIMILAR TO '[N-Z]%'

SELECT nombre, appaterno, apmaterno
	FROM "Cliente"
		WHERE appaterno SIMILAR TO '[A-M]%' AND appaterno NOT SIMILAR TO '[AE]%'
			OR apmaterno SIMILAR TO '[A-M]%' AND apmaterno NOT SIMILAR TO '[AE]%'

SELECT nombre, appaterno, credito
	FROM "Cliente"
		WHERE appaterno SIMILAR TO '[N-Z]%' AND credito > 10000

SELECT nombre, appaterno, credito, deuda/6 AS "Mensualidades"
	FROM "Cliente"
		WHERE appaterno SIMILAR TO '[N-Z]%' AND credito > 10000 AND deuda/6 > 1000

SELECT nombre
	FROM "Cliente"
		WHERE nombre LIKE 'E%a_' 

SELECT nombre
	FROM "Cliente"
		WHERE nombre SIMILAR TO 'E__z%[aeiou]__' 

SELECT nombre
	FROM "Cliente"
		WHERE nombre LIKE '% %'