CREATE TABLE Materia
(
	idMateria int,
	Nombre varchar(50),
	Nivel int,
	Creditos float
);

SELECT * FROM Materia

INSERT INTO Materia(idmateria,nombre,creditos,nivel)
		VALUES(1,'matematicas',8,1);
		
INSERT INTO Materia(idmateria,nombre,creditos,nivel)
		VALUES(2,'fisica',8,1);
		
INSERT INTO Materia(idmateria,nombre,creditos,nivel)
		VALUES(3,'quimica',10,2);
		
INSERT INTO Materia(idmateria,nombre,creditos,nivel)
		VALUES(4,'biologia',7.6,1);
		
INSERT INTO Materia(idmateria,nombre,creditos,nivel)
		VALUES(5,'historia',6.2,2);
		
INSERT INTO Materia(idmateria,nombre,creditos,nivel)
		VALUES(6,'filosofia',7.5,3);
		
DELETE FROM materia	
		WHERE idmateria = 2;
		
DELETE FROM materia	
		WHERE idmateria = 4;

UPDATE materia
	SET creditos = 8.5
	WHERE nivel = 1;
	
DELETE FROM materia
		WHERE nivel = 1;
		
INSERT INTO Materia(idmateria,nombre,creditos,nivel)
		VALUES(7,'calculo',10,3);
		