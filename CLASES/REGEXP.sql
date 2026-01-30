/*VAMOS A VER TODO LO RELACIONADO CON EL DELETE Y OTRAS COSAS*
*/
Use proyect;
select * from nombre_tabla;
/*Para hacer una seleccion donde por ejemplo, nos interesa eliminar todos los registros
que empiecen con 33, se hace de la siguiente forma: */
DELETE FROM nombre_tabla WHERE telefono LIKE "33%"; 

DELETE FROM nombre_tabla WHERE nombre LIKE "M%s"; /*Para hacer referencia de algo
dentro de M_s eliminara todo lo que concuerde con esto*/

select * from nombre_tabla Where telefono REGEXP "^3"; /*Sirve para decir aquellas que empiezan por 3*/
select * from nombre_tabla where telefono REGEXP "^3[0-9]*";
/*
Con REGEXP hay varias formas de aplicarlo 
^: Significa que empieza
$: Significa que termina
[0-9]Significa cualquier digito
*: 0 o mas 
[0-9]{n}: Hace referencia a n dígitos
[A-Za-z] : valores letras
.: Hace referencia a cualquier caracter que no sea un espacio (cuenta como uno)
.* : Sería la union de dos ya vistos antes, seria cualquier caracter pero serían muchos
|: Sería la clausula OR
\\* : Selecciona el caracter * literalmente.
*/
INSERT INTO  nombre_tabla(nombre,telefono) VALUES ("Mario","32");
INSERT INTO  nombre_tabla(nombre,telefono) VALUES ("Mar","33");
INSERT INTO  nombre_tabla(nombre,telefono) VALUES ("Sin_nombre","34");
INSERT INTO  nombre_tabla(nombre,telefono) VALUES ("Sin_nombre","35");
INSERT INTO  nombre_tabla(nombre,telefono) VALUES ("Sin_nombre","356");
INSERT INTO nombre_tabla(nombre) Values("Maria Alejandra del Rosario");
INSERT INTO nombre_tabla(nombre) VALUES ("Ana"),("Ana Maria"),("Ana Isabel");
INSERT INTO nombre_tabla(nombre) VALUES ("Anastacia");


SELECT * FROM nombre_tabla WHERE telefono REGEXP "^3[0-9]{2}$";
INSERT INTO  nombre_tabla(nombre,telefono) VALUES ("Sin_nombre","34MARCOS");
SELECT * FROM nombre_tabla WHERE telefono REGEXP "^3[0-9][A-Za-z]";
select * from nombre_tabla;
SELECT * FROM nombre_tabla WHERE nombre REGEXP "^S.*"; 
SELECT * FROM nombrE_tabla WHERE nombre REGEXP "^M.* [A-Za-z]*";


/*1️⃣ Seleccionar todos los teléfonos que empiecen por 32*/

SELECT * FROM nombre_tabla WHERE telefono REGEXP "^32";
select * from nombre_tabla WHERE nombre REGEXP "^Ana .*|^Ana$";
select * from nombre_tabla WHERE telefono REGEXP "^\\*";


/*REPASO REGEXP 

Con regexp se encuentran patrones, se usan los siguientes simbolos
* para denotar muchos o 0 
^ para denotar el inicio de la cadena
$ para denotar el final de una cadena
. para denotar cualquier caracter
[0-9] para denotar digitos
{n} para denotar n cantidad
[A-Za-z] para denotar cualquier letra*/

select * from nombre_tabla WHERE telefono REGEXP "^[0-9]{8}";
select * from nombre_tabla WHERE nombre REGEXP "[A-Za-z]{8}";
select * from nombre_tabla WHERE telefono REGEXP "^3..+";
select * from nombre_tabla WHERE nombre REGEXP ".*e$|^J";
CREATE DATABASE New_database;
use New_database;
USE proyect;
INSERT INTO nombre_tabla VALUES(90,"Manuel","123123132");

INSERT INTO nombre_tabla VALUES 
	(91,"Manuel","123123132"),
    (92,"MENO","11111323132")
;
ALTER  nombre_tabla SET telefono = telefono2;