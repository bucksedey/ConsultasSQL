SELECT nombrFROM "Cliente" ;
	
SELECT 'Hola'
FROM "Cliente";

SELECT nombre, 300
FROM "Cliente";

SELECT 'hola ' || nombre || ' 0'
FROM "Cliente";

SELECT ApPaterno, ApMaterno, Nombre
FROM "Cliente";

SELECT nombre || ' ' || ApPaterno || ' ' || ApMaterno
FROM "Cliente";

SELECT id, nombre, ApPaterno, RFC
FROM "Cliente";

SELECT ApPaterno, pais, estado, delegacion, calle, numext, numint,ip
FROM "Cliente";

SELECT ApPaterno, ApMaterno, Nombre, Credito, Deuda
FROM "Cliente";

SELECT Nombre 
FROM "Proveedor";

SELECT * FROM "Cliente";

SELECT Nombre
FROM "Producto";

SELECT Nombre, PrecioCompra ,PrecioSugerido
FROM "Producto";

---------------------------------------------------------------------------

SELECT CP AS "CODIGO POSTAL"
	FROM "Cliente";

SELECT RFC AS "REGISTRO FEDERAL DE CONTRIBUYENTES"
	FROM "Cliente";

SELECT ApPaterno AS "A.Paterno", ApMaterno AS "A.Materno", Nombre
	FROM "Cliente";

SELECT Pais AS "Pais de origen", Nombre, RFC AS "Registro de contribuyentes"
	FROM "Cliente";

SELECT Nombre, Deuda, 1000 AS "Pago a deuda"
	FROM "Cliente";

SELECT Nombre, PrecioSugerido AS "P.Venta", existencia
	FROM "Producto";

SELECT Nombre, PrecioSugerido AS "P.Venta", 30 AS DESCUENTO
	FROM "Producto";

SELECT Nombre FROM "Producto";

SELECT Nombre AS Producto, Existencia, 10 AS "Cantidad solicitada", PrecioSugerido AS "P.Sugerido"
	FROM "Producto";

SELECT Nombre AS PROVEEDOR
	FROM "Proveedor";

-----------------------------------------------------------------------------------------

SELECT Nombre || ' ' || ApPaterno || ' ' || ApMaterno 
	FROM "Cliente";

SELECT Nombre || ' ' || ApPaterno 
	FROM "Cliente";

SELECT 'El cliente ' || Nombre  || 'se apellida ' || ApPaterno
	FROM "Cliente";

SELECT Nombre  || 'vive en ' || Delegacion
	FROM "Cliente";

SELECT Credito-Deuda AS "Credito disponible"
	FROM "Cliente";

SELECT Deuda*.15 
	FROM "Cliente";

SELECT nombre, deuda, deuda*.10, deuda+(deuda*.10)
	FROM "Cliente";

SELECT Deuda/6
	FROM "Cliente";

SELECT Deuda/6, Deuda/12, Deuda/24
	FROM "Cliente";

SELECT Nombre || ' ' || ApPaterno || ' ' || ApMaterno, Deuda, (Deuda/6)+((Deuda/6)*.10)
	FROM "Cliente";

SELECT Deuda - Deuda*.30
	FROM "Cliente";

SELECT (Deuda-Deuda*.30)/6, (Deuda-Deuda*.30)/12, (Deuda-Deuda*.30)/24
	FROM "Cliente";

    SELECT 'El credito de ' || Nombre || ' es ' || Credito
	FROM "Cliente";

SELECT Nombre || ' tiene un credito de ' || Credito || ' y debe ' || Deuda || ', por tanto puede pedir otro credito de hasta ' || Credito-Deuda
	FROM "Cliente";

SELECT Nombre || ' en un credito a 6 meses tiene que pagar un total de ' || Deuda || ' por tanto pagara mensualmente ' || Deuda/6 
	FROM "Cliente";

SELECT 'Estimado cliente ' || Nombre || ' ' || ApPaterno || ', le recordamos que tiene una deuda de ' || Deuda || ' pesos, le ofrecemos la posibilidad de pagar el 40% (' || Deuda*.40 || ') pesos y el resto a 6 meses con el 10% de interes, quedando en ' || (Deuda*.60+((Deuda*.60)/10))/6 || ' pesos mensuales'
	FROM "Cliente";

SELECT 'El producto ' || Nombre || ' se vende en ' || PrecioCompra
	FROM "Producto";

SELECT 'El producto ' || Nombre || ' nos cuesta ' || PrecioCompra || ' y se vende en ' || PrecioSugerido || ', por lo que su ganancia es de ' || PrecioSugerido-PrecioCompra
	FROM "Producto";

SELECT 'Si resurtimos 10 ' || Nombre || ' con el ultimo precio de compra: ' || PrecioCompra || ' nos costara: ' || PrecioCompra*10 
	FROM "Producto";