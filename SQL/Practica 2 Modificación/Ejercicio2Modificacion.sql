CREATE TABLE auto
(
	modelo varchar(50),
	marca varchar(50),
	color varchar(20),
	placas varchar(4)
);

SELECT * FROM auto;

INSERT INTO auto(modelo, marca, color, placas)
		VALUES('Focus','Ford','Verde','XH67');
		
INSERT INTO auto(modelo, marca, color, placas)
		VALUES('Fiesta','Ford','Plata','B5G9');

INSERT INTO auto(modelo, marca, color, placas)
		VALUES('M3','BMW','Rojo','R9T6');
		
INSERT INTO auto(modelo, marca, color, placas)
		VALUES('AMG','Mercedes','Negro','Y7U0');
		
UPDATE auto	
		SET color = 'Rosa'
			WHERE modelo = 'M3';
			
UPDATE auto	
		SET color = 'Amarillo'
			WHERE modelo = 'AMG';
			
DELETE FROM auto
		WHERE modelo = 'Fiesta';

DELETE FROM auto
		WHERE modelo = 'AMG';
