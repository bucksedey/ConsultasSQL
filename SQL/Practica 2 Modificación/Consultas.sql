1.
SELECT 'Estimado cliente ' || Nombre || ' ' || ApPaterno || ', le recordamos que actualmente nos debe ' || Deuda
	FROM "Cliente"
WHERE deuda < 5000

2. 
SELECT 
    nombre,
    deuda,
    (deuda + (deuda * 0.1)) / 12 AS "Pago a 12 meses",
    (deuda + (deuda * 0.2)) / 24 AS "Pago a 24 meses"
  FROM "Cliente" 

3.
SELECT * FROM "Cliente"
WHERE appaterno NOT LIKE 'Catalan' AND appaterno NOT LIKE 'Perez' AND appaterno NOT LIKE 'Gomez'

4.
SELECT * FROM "Cliente"
WHERE credito BETWEEN 5000 AND 10000

5. 
SELECT nombre
    FROM "Cliente"
WHERE nombre NOT LIKE '%a%';

6.
SELECT now()+ CAST('15 day' AS interval) AS "Primer Pago",
   now()+ CAST('30 day' AS interval) AS "Segundo Pago",
   now()+ CAST('45 day' AS interval) AS "Tercer Pago"
FROM "Cliente"

7. 
SELECT 
  CONCAT(SUBSTR(nombre, 1, 1), UPPER(SUBSTR(nombre, 2, 3)), SUBSTR(nombre, 5)) as "Nuevo nombre"
FROM "Cliente" 

8. 
SELECT nombre, fechanac
	FROM "Cliente"
    WHERE date_part('day', fechanac) = date_part('day', now()) AND date_part('month',fechanac) = date_part('month', now())

9.
SELECT p.nombre
    FROM "Producto" p
    LEFT JOIN "ProductoVenta" pv ON p.idproducto = pv.idproducto
WHERE pv.idproducto IS NULL;

