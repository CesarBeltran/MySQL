/* SQL Structure Query Language
que es un campo, que es un registro y que es una tabla, tipo de datos
gestores de BD:  M. Acces, Informix, DBASE, SQL LITE, PostgreSQL,  MySQL

Sentencias  SQL
	-Sentencias estructurales: permiten crear, modificar o eliminar objetos, usuarios y
	 Propiedades de nuestra BD	
	
	-Sentencias de Datos: Permiten insertar, eliminar, modificar y buscar informacion 
	 en nuestra BD

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
	imagen VARCHAR(50), /*SE GUARDA LA RUTA DE LA IMAGEN*/
	PRIMARY KEY(email)  /*Campo que identifica como unico al registro de informacion*/
);


