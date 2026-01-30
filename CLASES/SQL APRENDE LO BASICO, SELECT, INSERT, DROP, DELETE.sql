/*PARA HACER LA CREACION DE UNA BASE DE DATOS*/
CREATE DATABASE proyect;
/*Para hacer uso de esta base de datos se usa la clausula*/
USE proyect; /* PARA ESTE CASO VAMOS A LLAMAR LA BASE DE DATOS proyect*/

/*Una vez se hace uso de la base de datos ya podemos trabajar dentro de ella, 
creando tablas*/


/*PARA ESTA TABLA SE PUEDE HACER USO DE DISTINTOS TIPOS*/
CREATE TABLE nombre_tabla(
/*El ID se define como el numero de identificacion o podria ser cualquiera
    el hecho de que se use como primary key significa que no se repite y es unica para 
    cada registro, además de que se va a usar mucho para las conexiones con otras tablas
    además el AUTO_INCREMENT hace que el valor se aumente automaticamente de 1 en 1*/
	ID INT PRIMARY KEY AUTO_INCREMENT,
    
    /*NOT NULL hace que se tenga que poner un registro si o si*/
    nombre VARCHAR(100) NOT NULL  ,
    /*DEFAULT le da un valor por defecto en caso de que no se ponga registro*/
    telefono varchar(12) DEFAULT "*********"
	/*Asi sucesivamente con cada registro, se pueden poner condiciones luego, veremos mas*/
);
/*Para hacer la insercion de un registro se debe poner
INSERT INTO (nombre de la tabla) VALUES(...);

se hace insert into para seleccionar la tabla
en VALUES se dicen que valores se van a insertar en la tabla
-Algo a recalcar, es que cuando se seleccion la tabla, con el nombre de la tabla
la insercion toma en cuenta todas las columnas, por lo que sería lo mismo que
INSERT INTO (nombre_tabla) (ID,nombre,telefono) VALUES(...);

cuando se pone un parentesis al lado derecho de la tabla, es para decir que tablas se van a 
seleccionar

INSERT INTO nombre_tabla (nombre) VALUES("JESUS); Es un ejemplo
*/
INSERT INTO nombre_tabla VALUES(1,"Marcos","1232132");
INSERT INTO nombre_tabla(nombre) VALUES("Jesus");
/*Recuerdese las columnas donde se pueden omitir los valores se pueden dejar vacias*/

INSERT INTO nombre_tabla(ID,nombre) VALUES(3,"Maria");
INSERT INTO nombre_tabla(ID,nombre,telefono) VALUES(4,"Loaiza","13245213213");
INSERT INTO nombre_tabla VALUES(5,"Maryori","3343123213");
INSERT INTO nombre_tabla (ID,nombre) VALUES(6,"Pedro Pascal");
INSERT INTO nombre_tabla(nombre,telefono) VALUES ("Sansa","332133213");
insert INTO nombre_tabla VALUES (8,"Luis","3431321233");
INSERT INTO nombre_tabla VALUES (9,"Oscar", "322132112");
INSERT INTO nombre_tabla VALUES (10,"Rafael","3343232332");
INSERT INTO nombre_tabla(nombre) VALUES ("Canela");
INSERT INTO nombre_tabla(ID,nombre,telefono) VALUES (12,"Papanoel","323212322");

INSERT INTO nombre_tabla(nombre,telefono) VALUES("Seventeen","331232551");


/*Para hacer la seleccion de registros se hace uso de
DONDE 
SELECT hace referencia a seleccionar
* es el numero de columnas de la tabla 
y posteriormente se especifica la tabla a seleccionar
 */
SELECT * FROM nombre_tabla;

/*Al parecer hay algo con esta tabla y es que si se hace
SELECT 5 FROM nombre_tabla se repite el numero 5 las veces que tiene registros la tabla
nos dice

'Por cada fila de la tabla nombre_tabla retornar 5'
*/

/*SELECCIONAR 5 FILAS*
*/
SELECT * FROM nombre_tabla LIMIT 5;

/*SELECCIONAR POR COLUMNAS*/

SELECT ID,nombre from nombre_tabla LIMIT 5;
SELECT ID + 5 from nombre_tabla LIMIT 7; /*Se le suma 5 al ID*/
SELECT CONCAT(nombre,"**") from nombre_tabla LIMIT 5; /*SE LE CONCATENA UN CARACTER*/
SELECT ID,nombre,telefono from nombre_tabla LIMIT 5;
SELECT ID+5, CONCAT(nombre,"**"),CONCAT(telefono,"||") from nombre_tabla LIMIT 5;

/*En resumen, para hacer la seleccion de columnas especificas se hace
SELECT (columnas a seleccionar) from nombre_tabla; y así sucesivamente

Igualmente, podemos concatenar o sumar valores en cada columna
*/
SELECT CONCAT("*",nombre,"||") from nombre_tabla;
select * from nombre_tabla;
/*PARA ELIMINAR REGISTROS HACEMOS USO DE LA CLAUSULA O ORDEN DELETE */
/*Alguna veces tenemos que tener en cuenta que tenemos el modo seguro activado
lo cual no permite eliminar registros en la tabla, para eso hacemos uso de 

SET SET SQL_SAFE_UPDATES = 0;
;*/
DELETE FROM nombre_tabla WHERE nombre="Marcos"; 
SET SQL_SAFE_UPDATES=0 ;
/*DE ESA FORMA SE ELIMINAN REGISTROS 
2	Jesus	*********
3	Maria	*********
4	Seventeen	331232551
5	Seventeen	331232551
6	Pedro Pascal	*********
7	Sansa	332133213
8	Luis	3431321233
9	Oscar	322132112
10	Rafael	3343232332
11	Canela	*********
12	Papanoel	323212322
*/

DELETE FROM nombre_tabla WHERE telefono="*********" and nombre="Jesus";

/*

3	Maria	*********
4	Seventeen	331232551
5	Seventeen	331232551
6	Pedro Pascal	*********
7	Sansa	332133213
8	Luis	3431321233
9	Oscar	322132112
10	Rafael	3343232332
11	Canela	*********
12	Papanoel	323212322

*/
DELETE FROM nombre_tabla WHERE nombre="Maria" or telefono="*********";
/*
4	Seventeen	331232551
5	Seventeen	331232551
7	Sansa	332133213
8	Luis	3431321233
9	Oscar	322132112
10	Rafael	3343232332
12	Papanoel	323212322
		*/
        
/*DE ESTA FORMA SE ELIMINAN REGISTROS TANTO CON CLAUSULAS OR O AND que pueden servir para eliminar
mas o filtrar mas la eliminacion*/

DROP TABLE nombre_tabla; /*PARA ELIMINAR UNA  TABLA COMPLETA*/