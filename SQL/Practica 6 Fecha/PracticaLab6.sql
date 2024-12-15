SELECT now();

SELECT now() + CAST('1 week' AS interval);

SELECT age(now(),fechaalta)
	FROM "Cliente"

SELECT EXTRACT(dow FROM now()),
	   TO_CHAR(now(),'day')
	FROM "Cliente"

SELECT TO_CHAR(fechaalta,'YYYY'),
	   TO_CHAR(fechaalta,'Month'),
	   TO_CHAR(fechaalta,'Day'),
	   TO_CHAR(fechaalta,'HH'),
	   TO_CHAR(fechaalta,'MI')
	FROM "Cliente"

SELECT now()+ CAST('1 month' AS interval) AS "Primer Pago",
	   now()+ CAST('2 month' AS interval) AS "Segundo Pago",
	   now()+ CAST('3 month' AS interval) AS "Tercer Pago"
	FROM "Cliente"

SELECT EXTRACT(year FROM (age(now(), fechaalta))),
	   EXTRACT(month FROM (age(now(), fechaalta))),
	   EXTRACT(day FROM (age(now(), fechaalta)))
	FROM "Cliente"

SELECT 'El dia de hoy '  || EXTRACT (DAY FROM now()) || '/' || EXTRACT (MONTH FROM now()) || '/' || EXTRACT (YEAR FROM now()) || ' es ' || '[' ||TO_CHAR(now(),'Day') || ']'
	FROM "Cliente"

SELECT nombre || ' ' || appaterno || ' se dio de alta el ' || TO_CHAR(now(),'Day') || ' ' ||EXTRACT (DAY FROM now()) || '/' || EXTRACT (MONTH FROM now()) || '/' || EXTRACT (YEAR FROM now())
	FROM "Cliente"

SELECT DATE(fechaalta) 
	FROM "Cliente"

SELECT nombre, fechaalta
	FROM "Cliente"
WHERE EXTRACT(YEAR FROM fechaalta) = '2010'

SELECT nombre, fechaalta
	FROM "Cliente"
WHERE EXTRACT(MONTH FROM fechaalta) = '12'

SELECT nombre, fechaalta
	FROM "Cliente"
WHERE EXTRACT(MONTH FROM fechaalta) = '2' AND EXTRACT(YEAR FROM fechaalta) = '2009'

SELECT nombre, fechaalta
	FROM "Cliente"
WHERE EXTRACT(MONTH FROM fechaalta) = '8' AND EXTRACT(YEAR FROM fechaalta) = '2010' AND EXTRACT (DAY FROM fechaalta) = '15'

SELECT date_part('year', age(fechaalta, now()))
	FROM "Cliente"

SELECT nombre, fechaalta, AGE(NOW(),fechaalta)
	FROM "Cliente"
WHERE EXTRACT(YEAR FROM AGE(NOW(),fechaalta)) < 0.5

SELECT nombre, fechanac
	FROM "Cliente"
WHERE date_part('day', fechanac) = date_part('day', now()) AND date_part('month',fechanac) = date_part('month', now())

SELECT nombre, fechanac
	FROM "Cliente"
WHERE date_part('month', fechanac) = 12

SELECT nombre, fechanac
	FROM "Cliente"
WHERE date_part('month', fechanac) <= 4

SELECT nombre, fechanac
	FROM "Cliente"
WHERE date_part('month', fechanac) = date_part('month', now())

SELECT nombre, fechanac
	FROM "Cliente"
WHERE date_part('month', fechanac) = date_part('month', now()+ CAST('1 month' AS interval))

SELECT nombre, fechanac
	FROM "Cliente"
WHERE date_part('month', fechanac) = date_part('month', now() + CAST('1 month' AS interval))
	  OR
	  date_part('month', fechanac) = date_part('month', now())

SELECT nombre, fechanac
	FROM "Cliente"
WHERE date_part('week', fechanac) = date_part('week', now())

SELECT nombre, fechanac
	FROM "Cliente"
WHERE date_part('day', fechanac) = date_part('day', now() + CAST('7 day' AS interval)) AND date_part('month',fechanac) = date_part('month', now())

SELECT nombre, fechanac
	FROM "Cliente"
WHERE date_part('day', fechanac) = date_part('day', now() + CAST('1 week' AS interval)) AND date_part('month',fechanac) = date_part('month', now()) AND TO_CHAR(now(),'day') LIKE 'saturday'

SELECT nombre, deuda, 'Estimado cliente '  || nombre || ' ' ||appaterno || ' le recordamos que el dia de hoy ' || CURRENT_DATE || ' usted nos debe ' || deuda || ' le ofrecemos la posibilidad de pagar a 6 meses con el 10% de interes, por lo que esperamos su primer pago de ' || (deuda+deuda*.10)/6 || ' pesos a mas tardar el dia ' || CURRENT_DATE + CAST('1 month' AS interval) || '. Por su atencion Gracias.'
	FROM "Cliente"
WHERE deuda > 5000