/*Para hacer uso o hacer referencia a una tabla y su record desde el exterior
hacemos uso de database_name.table_name*/

select * from proyect.nombre_tabla;
use proyect;
/*Como anteriormente vimos, podemos hacer una soma en MYSQL especificando column+n.
Asi, podemos crear una nueva columna con column+n y el SELECT query*/
select ID, ID + 5 from nombre_tabla; /*Se dan dos columnas*/

/*Distinct statement selecciona valores distintos en una columna*/

SELECT distinct * FROM nombre_tabla;

/*GROUP BY*/

CREATE TABLE tabla_prueba (
		CC INT UNIQUE primary KEY NOT NULL, 
		nombre VARCHAR(50) ,
        apellido VARCHAR(50),
        genero character,
        Birthday date,
        telefono VARCHAR(13) DEFAULT "*************"
        );
/*MODIFICAR UNA TABLA*/
ALTER TABLE tabla_prueba MODIFY  nombre VARCHAR(60) NOT NULL;
ALTER TABLE tabla_prueba MODIFY apellido VARCHAR(50) NOT NULL;
ALTER TABLE tabla_prueba MODIFY genero character NOT NULL;
ALTER TABLE tabla_prueba ADD COLUMN salario int;
ALTER TABLE tabla_prueba ADD COLUMN Ocupacion VARCHAR(50);
ALTER TABLE tabla_prueba ADD COLUMN edad int;
INSERT INTO tabla_prueba (CC, nombre, apellido, genero, Birthday, telefono) VALUES
(1001, 'Juan', 'Pérez', 'M', '1998-05-21', '3001111111'),
(1002, 'María', 'Gómez', 'F', '2000-11-10', '3001111112'),
(1003, 'Carlos', 'Rodríguez', 'M', '1995-02-14', '3001111113'),
(1004, 'Laura', 'Martínez', 'F', '1999-07-08', '3001111114'),
(1005, 'Andrés', 'López', 'M', '1997-09-30', '3001111115'),
(1006, 'Camila', 'Hernández', 'F', '1996-03-12', '3001111116'),
(1007, 'Felipe', 'Torres', 'M', '1994-01-25', '3001111117'),
(1008, 'Sara', 'Ramírez', 'F', '1998-10-02', '3001111118'),
(1009, 'Miguel', 'Flores', 'M', '2001-06-18', '3001111119'),
(1010, 'Daniela', 'Castro', 'F', '1993-12-05', '3001111120'),
(1011, 'Jorge', 'Vargas', 'M', '1992-08-22', '3001111121'),
(1012, 'Paula', 'Jiménez', 'F', '1999-04-11', '3001111122'),
(1013, 'Sebastián', 'Ríos', 'M', '1997-02-27', '3001111123'),
(1014, 'Valentina', 'Reyes', 'F', '1995-11-09', '3001111124'),
(1015, 'Diego', 'Moreno', 'M', '1998-07-14', '3001111125'),
(1016, 'Isabella', 'Cruz', 'F', '1996-05-19', '3001111126'),
(1017, 'David', 'García', 'M', '1994-03-03', '3001111127'),
(1018, 'Ana', 'Suárez', 'F', '1993-09-16', '3001111128'),
(1019, 'Luis', 'Mendoza', 'M', '1991-12-29', '3001111129'),
(1020, 'Nicole', 'Ramos', 'F', '2002-02-20', '3001111130'),
(1021, 'Santiago', 'Paredes', 'M', '1997-07-24', '3001111131'),
(1022, 'Lucía', 'Velásquez', 'F', '1998-10-10', '3001111132'),
(1023, 'Tomás', 'Bermúdez', 'M', '1999-03-05', '3001111133'),
(1024, 'Juliana', 'Ospina', 'F', '1995-01-17', '3001111134'),
(1025, 'Simón', 'Salazar', 'M', '1996-06-28', '3001111135'),
(1026, 'Manuela', 'Peña', 'F', '1994-04-14', '3001111136'),
(1027, 'Brayan', 'Peralta', 'M', '1993-08-08', '3001111137'),
(1028, 'Carolina', 'Quiroga', 'F', '1992-11-23', '3001111138'),
(1029, 'Mauricio', 'Galindo', 'M', '1991-07-02', '3001111139'),
(1030, 'Alejandra', 'Arias', 'F', '1990-05-01', '3001111140'),
(1031, 'Ricardo', 'Lara', 'M', '1997-10-09', '3001111141'),
(1032, 'Daniel', 'Córdoba', 'M', '1996-03-22', '3001111142'),
(1033, 'Mariana', 'Pinto', 'F', '1998-08-19', '3001111143'),
(1034, 'Esteban', 'Rangel', 'M', '1995-02-07', '3001111144'),
(1035, 'Alejandro', 'Mora', 'M', '1999-12-30', '3001111145'),
(1036, 'Ximena', 'Zapata', 'F', '1997-06-15', '3001111146'),
(1037, 'Óscar', 'Téllez', 'M', '1993-09-01', '3001111147'),
(1038, 'Daniela', 'Sánchez', 'F', '1994-01-19', '3001111148'),
(1039, 'Iván', 'Ortiz', 'M', '1996-07-04', '3001111149'),
(1040, 'Karol', 'Guzmán', 'F', '1995-04-27', '3001111150'),
(1041, 'Héctor', 'Cano', 'M', '1992-10-12', '3001111151'),
(1042, 'Lorena', 'Benítez', 'F', '1993-06-06', '3001111152'),
(1043, 'Rafael', 'Navarro', 'M', '1991-11-05', '3001111153'),
(1044, 'Mónica', 'Lemus', 'F', '1990-09-25', '3001111154'),
(1045, 'Adrián', 'Castaño', 'M', '1994-12-13', '3001111155'),
(1046, 'Melissa', 'Correa', 'F', '1998-03-08', '3001111156'),
(1047, 'Pablo', 'Franco', 'M', '1997-01-26', '3001111157'),
(1048, 'Diana', 'Aguilar', 'F', '1996-10-31', '3001111158'),
(1049, 'Cristian', 'Soto', 'M', '1993-05-14', '3001111159'),
(1050, 'Natalia', 'Mejía', 'F', '1992-04-02', '3001111160'),
(1051, 'Kevin', 'Bautista', 'M', '1998-09-09', '3001111161'),
(1052, 'Eliana', 'Villalba', 'F', '1996-07-20', '3001111162'),
(1053, 'Ángel', 'Agudelo', 'M', '1994-08-03', '3001111163'),
(1054, 'Viviana', 'Forero', 'F', '1995-05-16', '3001111164'),
(1055, 'Julián', 'Guerrero', 'M', '1993-02-01', '3001111165'),
(1056, 'Luisa', 'Montoya', 'F', '1991-06-29', '3001111166'),
(1057, 'Samuel', 'Barrera', 'M', '1999-11-21', '3001111167'),
(1058, 'Catalina', 'Parra', 'F', '1997-07-07', '3001111168'),
(1059, 'Fabián', 'Rueda', 'M', '1996-03-18', '3001111169'),
(1060, 'Tatiana', 'Medina', 'F', '1994-12-28', '3001111170'),
(1061, 'Oscar', 'Páez', 'M', '1993-01-04', '3001111171'),
(1062, 'Yesenia', 'Fuentes', 'F', '1992-09-15', '3001111172'),
(1063, 'Mateo', 'Rico', 'M', '1991-03-20', '3001111173'),
(1064, 'Daniela', 'Calderón', 'F', '1990-08-11', '3001111174'),
(1065, 'Jhon', 'Vivas', 'M', '1997-05-09', '3001111175'),
(1066, 'Karla', 'Amaya', 'F', '1998-10-23', '3001111176'),
(1067, 'Arnold', 'Valencia', 'M', '1996-01-18', '3001111177'),
(1068, 'Bianca', 'Murillo', 'F', '1995-02-22', '3001111178'),
(1069, 'Eduardo', 'Camargo', 'M', '1993-11-27', '3001111179'),
(1070, 'Vanessa', 'Solano', 'F', '1994-07-13', '3001111180');
/*UPDATE CLAUSE sirve para actualizar una fila, asi se quita o se añade un valor en una
fila*/
UPDATE tabla_prueba SET salario=2500000, Ocupacion='Ingeniero', edad=26 WHERE CC=1001;
UPDATE tabla_prueba SET salario=1800000, Ocupacion='Estudiante', edad=24 WHERE CC=1002;
UPDATE tabla_prueba SET salario=3200000, Ocupacion='Analista', edad=29 WHERE CC=1003;
UPDATE tabla_prueba SET salario=2100000, Ocupacion='Administradora', edad=25 WHERE CC=1004;
UPDATE tabla_prueba SET salario=2700000, Ocupacion='Programador', edad=27 WHERE CC=1005;
UPDATE tabla_prueba SET salario=1950000, Ocupacion='Diseñadora', edad=28 WHERE CC=1006;
UPDATE tabla_prueba SET salario=3500000, Ocupacion='Contador', edad=31 WHERE CC=1007;
UPDATE tabla_prueba SET salario=1600000, Ocupacion='Auxiliar', edad=26 WHERE CC=1008;
UPDATE tabla_prueba SET salario=3000000, Ocupacion='Técnico', edad=23 WHERE CC=1009;
UPDATE tabla_prueba SET salario=2400000, Ocupacion='Enfermera', edad=31 WHERE CC=1010;

UPDATE tabla_prueba SET salario=3300000, Ocupacion='Arquitecto', edad=33 WHERE CC=1011;
UPDATE tabla_prueba SET salario=1750000, Ocupacion='Estudiante', edad=25 WHERE CC=1012;
UPDATE tabla_prueba SET salario=2600000, Ocupacion='Ingeniero', edad=27 WHERE CC=1013;
UPDATE tabla_prueba SET salario=2000000, Ocupacion='Abogada', edad=29 WHERE CC=1014;
UPDATE tabla_prueba SET salario=2800000, Ocupacion='Programador', edad=25 WHERE CC=1015;
UPDATE tabla_prueba SET salario=2100000, Ocupacion='Diseñadora', edad=28 WHERE CC=1016;
UPDATE tabla_prueba SET salario=3700000, Ocupacion='Docente', edad=31 WHERE CC=1017;
UPDATE tabla_prueba SET salario=1900000, Ocupacion='Secretaria', edad=32 WHERE CC=1018;
UPDATE tabla_prueba SET salario=2600000, Ocupacion='Técnico', edad=34 WHERE CC=1019;
UPDATE tabla_prueba SET salario=1850000, Ocupacion='Mesera', edad=22 WHERE CC=1020;

UPDATE tabla_prueba SET salario=2900000, Ocupacion='Ingeniero', edad=27 WHERE CC=1021;
UPDATE tabla_prueba SET salario=1950000, Ocupacion='Auxiliar', edad=26 WHERE CC=1022;
UPDATE tabla_prueba SET salario=3100000, Ocupacion='Analista', edad=25 WHERE CC=1023;
UPDATE tabla_prueba SET salario=2300000, Ocupacion='Psicóloga', edad=30 WHERE CC=1024;
UPDATE tabla_prueba SET salario=2800000, Ocupacion='Programador', edad=24 WHERE CC=1025;
UPDATE tabla_prueba SET salario=2100000, Ocupacion='Diseñadora', edad=31 WHERE CC=1026;
UPDATE tabla_prueba SET salario=3400000, Ocupacion='Administrador', edad=33 WHERE CC=1027;
UPDATE tabla_prueba SET salario=2000000, Ocupacion='Secretaria', edad=34 WHERE CC=1028;
UPDATE tabla_prueba SET salario=3100000, Ocupacion='Técnico', edad=35 WHERE CC=1029;
UPDATE tabla_prueba SET salario=1950000, Ocupacion='Vendedora', edad=29 WHERE CC=1030;

UPDATE tabla_prueba SET salario=3000000, Ocupacion='Contador', edad=28 WHERE CC=1031;
UPDATE tabla_prueba SET salario=2600000, Ocupacion='Ingeniero', edad=29 WHERE CC=1032;
UPDATE tabla_prueba SET salario=2150000, Ocupacion='Recepcionista', edad=26 WHERE CC=1033;
UPDATE tabla_prueba SET salario=3200000, Ocupacion='Administrador', edad=30 WHERE CC=1034;
UPDATE tabla_prueba SET salario=2900000, Ocupacion='Programador', edad=27 WHERE CC=1035;
UPDATE tabla_prueba SET salario=2100000, Ocupacion='Diseñadora', edad=28 WHERE CC=1036;
UPDATE tabla_prueba SET salario=3600000, Ocupacion='Abogado', edad=33 WHERE CC=1037;
UPDATE tabla_prueba SET salario=2050000, Ocupacion='Auxiliar', edad=25 WHERE CC=1038;
UPDATE tabla_prueba SET salario=3100000, Ocupacion='Técnico', edad=30 WHERE CC=1039;
UPDATE tabla_prueba SET salario=1900000, Ocupacion='Cajera', edad=31 WHERE CC=1040;

UPDATE tabla_prueba SET salario=3550000, Ocupacion='Arquitecto', edad=32 WHERE CC=1041;
UPDATE tabla_prueba SET salario=2150000, Ocupacion='Secretaria', edad=33 WHERE CC=1042;
UPDATE tabla_prueba SET salario=3450000, Ocupacion='Ingeniero', edad=34 WHERE CC=1043;
UPDATE tabla_prueba SET salario=2050000, Ocupacion='Auxiliar', edad=35 WHERE CC=1044;
UPDATE tabla_prueba SET salario=3100000, Ocupacion='Contador', edad=31 WHERE CC=1045;
UPDATE tabla_prueba SET salario=2250000, Ocupacion='Enfermera', edad=29 WHERE CC=1046;
UPDATE tabla_prueba SET salario=3300000, Ocupacion='Administrador', edad=28 WHERE CC=1047;
UPDATE tabla_prueba SET salario=2400000, Ocupacion='Diseñadora', edad=32 WHERE CC=1048;
UPDATE tabla_prueba SET salario=2900000, Ocupacion='Técnico', edad=33 WHERE CC=1049;
UPDATE tabla_prueba SET salario=1950000, Ocupacion='Cajera', edad=34 WHERE CC=1050;

UPDATE tabla_prueba SET salario=3100000, Ocupacion='Ingeniero', edad=26 WHERE CC=1051;
UPDATE tabla_prueba SET salario=2300000, Ocupacion='Vendedora', edad=27 WHERE CC=1052;
UPDATE tabla_prueba SET salario=3500000, Ocupacion='Abogado', edad=30 WHERE CC=1053;
UPDATE tabla_prueba SET salario=2200000, Ocupacion='Secretaria', edad=28 WHERE CC=1054;
UPDATE tabla_prueba SET salario=2950000, Ocupacion='Administrador', edad=29 WHERE CC=1055;
UPDATE tabla_prueba SET salario=2100000, Ocupacion='Enfermera', edad=32 WHERE CC=1056;
UPDATE tabla_prueba SET salario=3300000, Ocupacion='Programador', edad=25 WHERE CC=1057;
UPDATE tabla_prueba SET salario=2250000, Ocupacion='Auxiliar', edad=24 WHERE CC=1058;
UPDATE tabla_prueba SET salario=3100000, Ocupacion='Técnico', edad=30 WHERE CC=1059;
UPDATE tabla_prueba SET salario=2000000, Ocupacion='Mesera', edad=33 WHERE CC=1060;

UPDATE tabla_prueba SET salario=3350000, Ocupacion='Ingeniero', edad=34 WHERE CC=1061;
UPDATE tabla_prueba SET salario=2150000, Ocupacion='Secretaria', edad=31 WHERE CC=1062;
UPDATE tabla_prueba SET salario=3500000, Ocupacion='Administrador', edad=32 WHERE CC=1063;
UPDATE tabla_prueba SET salario=2250000, Ocupacion='Psicóloga', edad=33 WHERE CC=1064;
UPDATE tabla_prueba SET salario=3100000, Ocupacion='Programador', edad=28 WHERE CC=1065;
UPDATE tabla_prueba SET salario=1950000, Ocupacion='Auxiliar', edad=27 WHERE CC=1066;
UPDATE tabla_prueba SET salario=3600000, Ocupacion='Técnico', edad=29 WHERE CC=1067;
UPDATE tabla_prueba SET salario=2050000, Ocupacion='Cajera', edad=30 WHERE CC=1068;
UPDATE tabla_prueba SET salario=3300000, Ocupacion='Contador', edad=34 WHERE CC=1069;
UPDATE tabla_prueba SET salario=2150000, Ocupacion='Vendedora', edad=31 WHERE CC=1070;



/*PODEMOS CONTAR CUANTOS REGISTROS HAY CON COUNT*/
select * FROM tabla_prueba;
/*GROUP BY*/


/*PARA QUE FUNCIONE TIENE QUE SER UNA FUNCION AGREGADA*/
select genero,AVG(edad) from tabla_prueba GROUP BY genero;
/*COMO VEMOS ESTA PARTE DE GROUP BY  HACE UNA FUNCION DE AGREGACION*/
SELECT genero,AVG(salario) from tabla_prueba GROUP BY genero;

/*AQUI ES CASI COMO QUE SE HACE UN FILTRO, selecciona aquellos valores distintos
tanto de genero como ocupacion*/
SELECT COUNT(*) FROM tabla_prueba WHERE ocupacion ="Ingeniero";
SELECT ocupacion,AVG(salario),MAX(edad),MIN(edad),COUNT(ocupacion) from tabla_prueba GROUP BY ocupacion;
/*ESTAS SON FUNCIONES DE AGREGACION
AVG nos da el promedio 
MAX el maximo
MIN el minimo
COUNT cuenta las columnas
*/

/*ORDER BY
Ordena una tabla en base a una columna
ESTA ACEND QUE ES POR DEFECTO 
DESC: Ordena decendiendo
*/
SELECT Ocupacion,salario FROM tabla_prueba GROUP BY Ocupacion,salario ORDER BY salario DESC;
SELECT * FROM  tabla_prueba ORDER BY nombre;
SELECT genero,edad FROM tabla_prueba ORDER BY edad DESC;
/* Se pueden dar 2 columnas para ordenar por ejemplo*/
SELECT * FROM tabla_prueba ORDER BY nombre,genero,edad DESC; /*organiza la tabla
primero organizando desde el nombre y luego en la edad y tomando en cuenta el genero*/
SELECT  * FROM tabla_prueba ORDER BY genero,nombre,edad DESC;








/*HAVING FUNCTION

La funcion HAVING es para funciones de agregacion
mientras que la funcion WHERE no se puede usar para funciones de  agregacion*/

select Ocupacion,AVG(salario) FROM tabla_prueba GROUP BY Ocupacion HAVING AVG(salario)<2100000.0000;
SELECT Ocupacion,AVG(salario) FROM tabla_prueba GROUP BY Ocupacion WHERE AVG(salario)<2100000.0000; /*no funciona, debe ser having*/


