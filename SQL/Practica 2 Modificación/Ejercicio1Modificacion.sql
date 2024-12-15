CREATE TABLE Alumnos
(
	idAlumno int, 
	Nombre varchar(50),
	ApPaterno varchar(50),
	ApMaterno varchar(50),
	prom float,
	fechaIngreso date
);

SELECT * FROM Alumnos

INSERT INTO Alumnos(Nombre, ApPaterno, ApMaterno, fechaIngreso, prom,idAlumno)
		VALUES('Blanca Jenipher', 'Garcia', 'Montez','2010-02-02',10,1);
		
INSERT INTO Alumnos(Nombre, ApPaterno, ApMaterno, fechaIngreso, prom,idAlumno)
		VALUES('Brandon', 'Garcia', 'Ruiz','2011-08-05',9,2);
		
INSERT INTO Alumnos(Nombre, ApPaterno, fechaIngreso,idAlumno)
		VALUES('Brenda', 'Alcantara','2022-01-05',3);
		
UPDATE Alumnos
	SET prom=8
		WHERE idAlumno = 3;
		
UPDATE Alumnos
	SET prom=7
		WHERE idAlumno = 1;
		
UPDATE Alumnos
	SET fechaIngreso='2013-10-14'
		WHERE idAlumno = 2;
		
UPDATE Alumnos
	SET fechaIngreso='2009-04-23'
		WHERE idAlumno = 1;
		
DELETE FROM Alumnos
		WHERE idAlumno = 1;