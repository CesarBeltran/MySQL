/* SQL Structure Query Language
que es un campo, que es un registro y que es una tabla, tipo de datos
gestores de BD:  M. Acces, Informix, DBASE, SQL LITE, PostgreSQL,  MySQL

Sentencias  SQL
	-Sentencias estructurales: permiten crear, modificar o eliminar objetos, usuarios y
	 Propiedades de nuestra BD	
	
	-Sentencias de Datos: Permiten insertar, eliminar, modificar y buscar informacion 
	 en nuestra BD

	 MyISAM   Tablas planas similar a excel
	 InnoDB   Tablas relacionales similar a access

*/
CREATE DATABASE mis_contactos;

USE mis_contactos;

CREATE TABLE contactos(
	email VARCHAR(50)  NOT NULL, /*VARCHAR Caracter variable de  50 caracteres*/
	nombre VARCHAR(50) NOT NULL,
	sexo CHAR(1), /* M o  F*/
	nacimiento DATE,
	telefono VARCHAR(13),
	pais VARCHAR(50) NOT NULL,
	imagen VARCHAR(50), 						/*SE GUARDA LA RUTA DE LA IMAGEN*/
	PRIMARY KEY(email),  						/*Campo que identifica como unico al registro de informacion*/
	FULLTEXT KEY buscador(email, nombre, sexo, telefono, pais)      /*llave q busca en los campos mencionados */

)ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE pais(

	id_pais INT NOT NULL AUTO_INCREMENT,
	pais VARCHAR(50) NOT NULL,
	PRIMARY KEY (id_pais)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO pais(id_pais,pais) VALUES
	(1,"Mexico"),
	(2,"Colombia"),
	(3,"España"),
	(4,"Italia"),
	(5,"Argentina"),
	(6,"Japon"),
	(7,"Canada"),
	(8,"Australia"),
	(9,"Turquia"),
	(10,"Israel");


