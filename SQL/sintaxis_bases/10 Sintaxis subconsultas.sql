Alumno:_______________________________
Grupo:________________________________
Profesor: Edgar A. Catal�n Salgado

SUBCONSULTAS

En ciertas ocasiones para poder resolver una consulta necesitamos de un valor almacenado en la base de datos. Una subconsulta nos permite hacer esto, literalmente es una consulta metida dentro de otra, la cual se ejecuta primero para obtener un resultado y este resultado se usa en la consulta exterior para llegar al resultado final.

Tomemos por ejemplo la pregunta �Que productos cuestan mas que un DVD?, para resolver esto primero necesitariamos conocer el precio del DVD, podriamos obtener dicho precio mediante la siguiente consulta

SELECT precioVenta
FROM tblInventario
WHERE nombre='dvd'

Lo cual nos daria como resultado 
+------+
|Precio|
+------+
 1500

Con esa informacion ya podriamos realizar la consulta que se nos pidio, de la siguiente forma:

SELECT nombre, precioVenta
FROM tblInventario
WHERE PrecioVenta>1500

Sin embargo el precio del dvd puede cambiar, ademas si quisieramos saber que productos cuestan mas que una tele o un estereo, tendriamos que cambiar las 2 consultas, entonces si sabemos que ese valor es el resultado de una consulta, podemos usar esa consulta dentro de la otra para obtener el resultado deseado de la siguiente forma:

SELECT nombre, precioVenta -- La consulta externa es en la que se muestra la informacion deseada o solicitada
FROM tblInventario
WHERE PrecioVenta>(SELECT precioVenta -- la consulta interna obtiene un dato necesario para poder resolver 
		   FROM tblInventario  -- la externa, en este caso solo el precio del DVD
		   WHERE nombre='dvd')

Notese que la subconsulta esta encerrada entre parentesis, esto tiene 2 funciones la principal es que al igual que con operadores aritmeticos y logicos, le indica al compilador de MYSQL que lo que esta dentro de los parentesis es un codigo que se debe ejecutar primero. La 2da simplemente es para dar claridad a las consultas.

Algo importante a hacer notar es que si tenemos 2 productos que se llamen DVD, la cunsulta deja de funcionar, debido a que como resultado de la subconsulta o consulta interna tendriamos 2 valores y al sustituir el compilador tendriamos algo como:

SELECT nombre, precioVenta -- La consulta externa es en la que se muestra la informacion deseada o solicitada
FROM tblInventario
WHERE PrecioVenta>(1500,2000) -- la consulta interna devuelve 2 valores, y el operador Mayor que solo permite uno  				-- a cada lado, lo cual nos genera un error.


Por lo tanto necesitamos una forma de garantizar en este caso,que el resultado de la consulta interna unicamente regrese un registro, para lograr ese objetivo en lugar de usar el nombre usamos el identificador de producto

SELECT nombre, precioVenta -- La consulta externa es en la que se muestra la informacion deseada o solicitada
FROM tblInventario
WHERE PrecioVenta>(SELECT precioVenta -- la consulta interna obtiene un dato necesario para poder resolver 
		   FROM tblInventario  -- la externa, en este caso solo el precio del DVD
		   WHERE IdProducto=3)



En realidad todos los resultados de una consulta pueden ser considerados como tablas, 
pero de acuerdo a la cantidad de datos que regresa y el tipo de estos, podriamos clasificarlo 
de la siguiente forma:

TIPO 1.- Un unico dato de un tipo especifico, generado por consultas en las que en la parte 
del select solo existe un campo y de algun modo se garantiza que solo se regresara un registro, 
ya sea que se condicione mediante el identificador o usando la clausula limit, o funciones de 
agregado sobre toda la tabla, etc.
	select nombre
	From tblClientes
	where IdCliente=1

TIPO 2.- Una columna de datos del mismo tipo. Generado por consultas que en la parte del 
select tienen un unico campo pero en el where se regresan 2 o mas registros
	select nombre
	From tblClientes

TIPO 3.- Un renglon de datos
	select nombre, FechalAlta, Credito
	From tblClientes
	where IdCliente=1

TIPO 4.- Una tabla con varios datos de tipo diferente. 
	select nombre, FechalAlta, Credito
	From tblClientes


Lo cual nos lleva a las siguientes restriciones:

En la parte del select unicamente pueden ir subconsultas del tipo 1
En la parte del from, pueden ir consultas de cualquier tipo pero se les tiene que poner un alias
En operaciones aritmeticas, solo pueden usar subconsultas del tipo 1
En condiciones mediante operadores comparativos, solo se pueden usar del tipo 1, aunque nos 
podemos ayudar de los operadores IN, ALL y ANY para extender sus capacidades y poder usar consultas del tipo 2 

Where campo in (valor1, valor2, ...) pide que campo sea igual a cualquiera de los valores
where campo > all(valor1, valor2, valor3,...) pide que campo sea mayor a todos los valores
where campo > any (valor1, valor2, valor3,...) pide que campor sea mayor a cualquiera de los valores

Podemos reemplazar esta lista de valores por una subconsulta
Where campo in (subconsulta) pide que campo sea igual a cualquiera de los valores
where campo > all(subconsulta) pide que campo sea mayor a todos los valores
where campo > any (subconsulta) pide que campo sea mayor a cualquiera de los valores




