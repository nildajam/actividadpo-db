SHOW DATABASES;
CREATE DATABASE confbsas;
USE confbsas;

SHOW tables;
SHOW fields FROM tickets;

CREATE TABLE IF NOT EXISTS tickets(
	id int(2) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(20),
	apellido varchar(20) NOT NULL,
	email varchar(30) NOT NULL,
	cantidad tinyint(2) NOT NULL,
	categoria varchar(15) NOT NULL,
	ticket int default 200 NOT NULL,
	descuento int(8) NOT NULL,
	fecha timestamp NOT NULL,
);


-- Eliminé el campo fecha porque me daba error, no me dejaba avanzar :S 

ALTER TABLE tickets DROP fecha;

-----------------------------------------------------------------------------

-- Cambié a varchar para que me tome el signo % y lo toma (aquí en DBeaver no lo muestra en el campo pero en phpMyAdmin si se aprecia el signo % en el campo)

ALTER TABLE tickets CHANGE descuento descuento varchar(4) NOT NULL;

-----------------------------------------------------------------------------

-- Ingresando todos los valores

INSERT INTO tickets(nombre, apellido, email, cantidad, categoria, ticket, descuento) 
VALUES('Pepito', 'Colorado', 'colorado@email.com', 1, 'Junior', 200, '15%');

-----------------------------------------------------------------------------

-- Prueba: Sin nombre (que acepta null) y sin ticket (que tiene valor default)

INSERT INTO tickets(apellido, email, cantidad, categoria, descuento) 
VALUES('Cualquiera', 'cualquiera@email.com', 1, 'Trainee', '50%');

-----------------------------------------------------------------------------

-- Actualicé el campo descuento (antes 80 ahora 80%)

UPDATE tickets SET descuento = '80%' WHERE tickets.id = 1;


