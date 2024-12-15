SELECT nombre,
	LEFT(nombre,3)
FROM "Cliente"

SELECT nombre,
	RIGHT(nombre,3)
FROM "Cliente"

SELECT nombre,
	SUBSTRING(nombre,2,5)
FROM "Cliente"

SELECT nombre,
	REPLACE(nombre,'d','s')
FROM "Cliente"

SELECT appaterno,
	CHAR_LENGTH(appaterno)
FROM "Cliente"

SELECT nombre,
	LTRIM(nombre)
FROM "Cliente"

SELECT nombre,
    RTRIM(nombre)
FROM "Cliente"
		
SELECT nombre,
    UPPER(nombre)
FROM "Cliente"

SELECT nombre,
    LOWER(nombre)
FROM "Cliente"

SELECT nombre,
    CHAR_LENGTH(nombre)
FROM "Cliente"

SELECT nombre, 
	REPLACE(delegacion,'Benito Juarez','B. Juarez') AS delegacion
FROM "Cliente"

SELECT 
	REPLACE(nombre, nombre , UPPER(appaterno) || ' ' || apmaterno || ' ' || nombre) AS "Nombre Completo"
FROM "Cliente"

SELECT 
	REPLACE(nombre, nombre , UPPER(appaterno || ' ' || apmaterno || ' ' || nombre)) AS "Nombre Completo"
FROM "Cliente"

SELECT 
	REPLACE(nombre, 'e', '3')
FROM "Cliente"

SELECT 
	REPLACE(nombre, 'o', '0')
FROM "Cliente"

---------------------------------------------------------------------------------------

SELECT nombre
    FROM "Cliente"
WHERE CHAR_LENGTH(nombre) > 5

SELECT nombre
	FROM "Cliente"
WHERE CHAR_LENGTH(nombre) BETWEEN 5 AND 7

SELECT nombre
	FROM "Cliente"
WHERE LTRIM(nombre) != nombre

SELECT nombre
	FROM "Cliente"
WHERE RTRIM(nombre) != nombre

SELECT nombre
	FROM "Cliente"
WHERE RTRIM(nombre) != nombre OR LTRIM(nombre) != nombre

----------------------------------------------------------------------------------------

SELECT nombre,
	REPLACE(REPLACE(nombre, 'e', '3'),'o', '0')
FROM "Cliente"

SELECT nombre,
	REPLACE(REPLACE(REPLACE(REPLACE(nombre, 'a', '@'),'e', '3'),'i','!'),'o','0')
FROM "Cliente"

SELECT nombre,
	UPPER(SUBSTRING(nombre,1,2)) || SUBSTRING(nombre,3,CHAR_LENGTH(nombre))
FROM "Cliente"

SELECT nombre,
    SUBSTRING(nombre,1,CHAR_LENGTH(nombre)-1) || UPPER(SUBSTRING(nombre,CHAR_LENGTH(nombre),CHAR_LENGTH(nombre)))
FROM "Cliente"

SELECT nombre,
	REPLACE(nombre,SUBSTRING(nombre,3,1),UPPER(SUBSTRING(nombre,3,1)))
FROM "Cliente"
		
SELECT nombre,
	SUBSTRING(nombre,1,1) || UPPER(SUBSTRING(nombre,2,1)) || SUBSTRING(nombre,3,1) || UPPER(SUBSTRING(nombre,4,1)) || SUBSTRING(nombre,5,CHAR_LENGTH(nombre))
FROM "Cliente"

SELECT nombre,
	SUBSTRING(nombre,1,CHAR_LENGTH(nombre)-2) || UPPER(SUBSTRING(nombre,CHAR_LENGTH(nombre)-1,1)) || SUBSTRING(nombre,CHAR_LENGTH(nombre),1)
FROM "Cliente"

SELECT nombre,
    SUBSTRING(nombre,1,1) || UPPER(SUBSTRING(nombre,2,1)) || SUBSTRING(nombre,3,CHAR_LENGTH(nombre)-3) || UPPER(SUBSTRING(nombre,CHAR_LENGTH(nombre),1))  
FROM "Cliente"

SELECT nombre,
	SUBSTRING(nombre,1,1) || UPPER(SUBSTRING(nombre,2,1)) || SUBSTRING(nombre,3,CHAR_LENGTH(nombre)-4) || UPPER(SUBSTRING(nombre,CHAR_LENGTH(nombre)-1,1)) || SUBSTRING(nombre,CHAR_LENGTH(nombre),1)  
FROM "Cliente"

SELECT nombre,
	SUBSTRING(nombre,1,1) || UPPER(SUBSTRING(nombre,2,1)) || SUBSTRING(nombre,3,1) || UPPER(SUBSTRING(nombre,4,1)) || SUBSTRING(nombre,5,CHAR_LENGTH(nombre)-2) || UPPER(SUBSTRING(nombre,CHAR_LENGTH(nombre)-1,1)) || SUBSTRING(nombre,CHAR_LENGTH(nombre),1)  
FROM "Cliente"