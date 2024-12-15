SELECT * FROM "Cliente"
	ORDER BY fechaalta
LIMIT 1;

SELECT * FROM "Cliente"
	ORDER BY credito ASC
LIMIT 1;

SELECT * FROM "Cliente"
ORDER BY nombre;

SELECT * FROM "Cliente"
WHERE delegacion LIKE 'Iztacalco'
    ORDER BY nombre
LIMIT 3;

SELECT * FROM "Cliente"
    ORDER BY deuda;

SELECT * FROM "Cliente"
    ORDER BY credito DESC;

SELECT * FROM "Cliente"
    ORDER BY deuda
LIMIT 5;

SELECT * FROM "Cliente"
    ORDER BY delegacion, deuda DESC;

SELECT * FROM "Cliente"
    ORDER BY delegacion DESC, credito ASC;