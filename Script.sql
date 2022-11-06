SHOW DATABASES;
CREATE DATABASE registro;
USE registro;
SHOW tables;
DROP DATABASE;


CREATE TABLE IF NOT EXISTS personas(
	id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(40) NOT NULL,
	apellido varchar(40) NOT NULL,
	edad tinyint(2) NOT NULL,
	fecha timestamp NOT NULL,
	provincia varchar(30) NOT NULL
);

INSERT INTO personas(nombre, apellido, edad, provincia) VALUES('Agustina', 'Mendoza', 35, 'Jujuy');