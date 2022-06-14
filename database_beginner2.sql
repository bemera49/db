#Vamos aprender a insertar datos en la base de datos, que es de la primera sección de beginner#
INSERT INTO users VALUES(NULL, 'Andres Felipe', 'Narvaez Perez', 'bemera49@gmail.com', '1234', '2022-06-09');

#insertar datos en columnas especificas, tener encuenta el nombre de la tabla y que los datos sean not null#
INSERT INTO users(email, password) VALUES('bemera49@gmail.com', '1234');

#Ahora vamos a revisar las consultas, mostrar todos los registros de una tabla#
SELECT * FROM users;

#También podemos selecionar los datos especificos#
SELECT name, surname, date, FROM users;

#OPeradores aritmericos#
SELECT email, (7+7) AS operaciones FROM users;

#El order by organiza de forma asendente(organizada) de 1-*#
SELECT id, email AS correo FROM users ORDER BY id;

#El order by organiza de forma desendente(de mayor a menor)#
SELECT id, email AS correo FROM users ORDER BY id DESC;

#El order by organiza de forma asendente(organizada) de 1-* el ASC hace mas de los mismo#
SELECT id, email AS correo FROM users ORDER BY id ASC;

#Se pueden poner operaciones logicas, la suma del id con cierto número#
SELECT email, (id+7) AS operaciones FROM users;

#Se puede sacar el valor absoluto#
SELECT ABS(7) AS operaciones FROM users;

#Podemos redondiar una valor decimal#
SELECT CEIL(7.4) AS operaciones FROM users;

#IMPORTANTE si queremos o necesitamos algúna función Sql ya sea de matetematicas, buscamos en google sql math#




