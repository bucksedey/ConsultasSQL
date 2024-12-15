CREACION, MODIFICACION Y ELIMINACION DE TABLAS 


Para crear una tabla se usa la siguiente sintaxis:

create table NombreTabla
  (
   Campo1 TipoDato1,
   Campo2 TipoDato2,
   ...
   CampoN TipoDatoN
  );

Los tipos de datos mas comunes son:
   int.- Enteros 
   float.- Flotantes
   date.-  Fecha
   time.-  Hora
   char(longitud).- Texto de longitud fija.
   varchar(longitud).- Texto de longitud variable.
     

Para modificar la definición de una tabla la instrucción es alter table, las modificaciones mas comunes son agregar o quitar columnas.

  Para borrar una columna:
     alter table NombreTabla
       drop Column nombreColumna;
   
  Para agregar una columna:
     alter table NombreTabla
        Add NombreCampo Tipodato (longitud);
		
  Para cambiar el nombre a una columna:
     alter table NombreTabla 
        rename column nombreColumna to nuevo_nombre_columno; 

  Para cambiar el nombre de una tabla:
  alter table table_nombre
  rename to nuevo_table_nombre; 

  Para eliminar una tabla:
  Drop Table NombreTabla


Ejemplo:

  Crea una base de datos que se llame BDhospital. En esta base se guardara la clave, el nombre, teléfono y recamara de los pacientes. Ademas de los doctores nos interesa su nombre, telefono, especialidad y salario.


 create table Paciente
   (
    clave int,
    nombre varchar (50),
    telefono varchar(30),
    recamara int
   );

 create table Doctor
   (
    nombre varchar (50),
    Telefono varchar (30),
    especialidad varchar (20),
    salario float
   );


Modifica la tabla paciente para agregar el dato Fecha ingreso y quitar el dato teléfono
Alter table Paciente
    Add FechaIngreso date;

Alter table Paciente
    Drop column telefono;

Elimina la tabla paciente
Drop table paciente;

Modifica el nombre de la columna idcliente a id_cliente de la tabla Clientes 

ALTER TABLE Clientes 
RENAME COLUMN idcliente TO id_clientes;