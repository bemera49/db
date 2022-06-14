#Muestra los todo lo caracteres en mayuscula, pero que sean letras#
SELECT UPPER(name) FROM users;

#Muestra los todo lo caracteres en minuscula, pero que sean letras#
SELECT LOWER(name) FROM users;

#Podemos concatenar con la función CONCAT#
SELECT CONCAT(name, ' ', surname) AS CONVERSIÓN FROM users;

#Podemos meter dos funciones a la vez, como en este caso mayuscula y concatenar#
SELECT UPPER(CONCAT(name, ' ', surname)) AS CONVERSIÓN FROM users;

#Nos quita los espacios que hay en la linea de codigo#
SELECT TRIM(CONCAT(name, ' ', surname)) AS CONVERSIÓN FROM users;

#Se puede agregar a las consultas funciones, por ejemplo la de la fecha CURDATE(), la cual nos trae la infroamción de#
#la fecha actual en la que nos encontremos#
SELECT email, name AS NOMBRE, surname, CURDATE() AS CONVERSIÓN FROM users; 

#Nos da la información en números, los días restante que han pasado desde el registro hasta la fecha#
SELECT DAYNAME(date, CURDATE()) AS date FROM users; 

#Podemos sabe el mes en que se registro el dato, debe tener la fecha como culmna#
SELECT DAYOFMONTH(date) AS 'date' FROM users; 

#Nos muestra el día de la semana cuando fue registrado
SELECT DAYOFWEEK(date) AS 'actually date' FROM users;

#Nos muestra el día del mes cuando fue registrado#
SELECT DAYOFYEAR(date) AS 'actually date' FROM users;

#Nos muestra el año cuando fue registrado
SELECT YEAR(date) AS 'actually date' FROM users;

#Nos muestra el día cuando fue registrado
SELECT DAY(date) AS 'actually date' FROM users;

#Nos muestra el mes cuando fue registrado
SELECT MONTH(date) AS 'actually date' FROM users;

#Podemos saber la hora en la que estamos#
SELECT CURTIME() AS 'actually date' FROM users;

#Nos trae la fehca y hora actual del sistema#
SELECT SYSDATE() AS 'actually date' FROM users;

#Si queremos traer los datos de un formato a lo que requerimos o necesitemos, podemos camiar CURDATE por una columna 
#que tenga la fecha 
SELECT DATE_FORMAT(CURDATE(), '%d-%m-%Y') AS 'actually date' FROM users;

#Podemos comprobar si algún dato de la base de datos es nulo "NULL", donde 0 es false y 1 es true#
SELECT *, ISNULL('name column') FROM 'name table';

#Podemos comprobar si algún dato esta repetido con la función STRCMP, tener encuenta que se deben comparar dos tablas o
parametros, donde 0 es false y 1 es true#
SELECT *, STRCMP('name column', 'other column') FROM 'name table';

#Con esta función podemos saber la versión de mysql
SELECT VERSION() FROM 'name table';

#El usuario a nivel de mysql en el que estamos ingresados o usando
SELECT USER() FROM 'name table';

#Con la función DISTINCT nos da la información de los datos, pero si hay algún dato repetido solo muestra 1 dato
SELECT DISTINCT 'name column' FROM 'name table';

#Nos muestra el nombre de la base de datos que estamos usando
SELECT DATABASE() FROM users;

#Nos indica si el campo esta vacio, si lo llega estar en este caso nos muestra el string 'El campo esta vacio', 
#lo podemos cambiar a lo que queramos que nos muestre en el campo
SELECT IFNULL('column name', 'El campo esta vacio') FROM users;













