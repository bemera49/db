CREATE DATABASE IF NOT EXISTS db;
USE db;

#Eliminar la base de datos#
DROP DATABASE 'name database';

#Creamos una tabla para seguir con los puntos#
CREATE TABLE IF NOT EXISTS users(
    id INT(255) auto_increment NOT NULL,
    name VARCHAR(255),
    surname VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
    CONSTRAINT pk_users PRIMARY KEY(id)
    )ENGINE=InnoDB;

#Eliminar la tabla #
DROP TABLE 'name table';

#describir una tabla# 
DESC 'name table';

#Renombrar una tabla# 
ALTER TABLE 'table name' RENAME TO 'new name table'

#Cambiar nombre a una columna#
ALTER TABLE 'table name' CHANGE surname surnema_rename VARCHAR(100) null;

#modificar el tipo de una columna#
ALTER TABLE 'table name' MODIFY 'colum name'  CHAR(100) null;

#Añadir columna a una table#
ALTER TABLE 'name table' ADD 'name new column' VARCHAR(40) NULL; 

#Añadir una restrinción a una columna, uq_email es el nombre que se le asigna a esa restrinción en este caso con el email#
ALTER TABLE 'name table' ADD CONSTRAINT uq_email UNIQUE('name campo column');

#Borrar una columna#
ALTER TABLE 'name table' DROP 'name columna';


INSERT INTO users VALUES(NULL, 'Ketty Tatiana', 'Perez Laizeca', 'Tatyp15@gmail.com', '321');