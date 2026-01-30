#PRACTICA UNA VEZ MAS:
#Crear una base de datos

CREATE DATABASE new_database_third;
USE new_database_third;

CREATE TABLE datos_estudiantes (
		CC INT PRIMARY KEY AUTO_INCREMENT,
		Nombre VARCHAR(50),
        Apellido VARCHAR(50),
        SegundoApellido VARCHAR(50),
        telefono VARCHAR(13) UNIQUE DEFAULT "***********",
		Carrera VARCHAR(50) NOT NULL,
        Altura INT NOT NULL,
        MateriasEscogidas INT NOT NULL
        
);
INSERT INTO datos_estudiantes 
(Nombre, Apellido, SegundoApellido, telefono, Carrera, Altura, MateriasEscogidas)
VALUES
('Juan','Pérez','Gómez','3001110001','Ingeniería de Sistemas',170,6),
('María','Rodríguez','López','3001110002','Medicina',165,7),
('Carlos','García','Martínez','3001110003','Derecho',175,5),
('Ana','Hernández','Ruiz','3001110004','Psicología',160,6),
('Luis','Martínez','Torres','3001110005','Arquitectura',180,5),
('Laura','Gómez','Castro','3001110006','Contaduría',162,6),
('Andrés','Ramírez','Vargas','3001110007','Ingeniería Civil',178,7),
('Sofía','Morales','Rojas','3001110008','Enfermería',158,6),
('Diego','Ortega','Pineda','3001110009','Economía',172,5),
('Valentina','Suárez','Mendoza','3001110010','Administración',168,6),

('Miguel','Navarro','Peña','3001110011','Ingeniería Electrónica',176,7),
('Paula','Cortés','León','3001110012','Diseño Gráfico',160,5),
('Jorge','Salazar','Arias','3001110013','Filosofía',174,4),
('Camila','Rincón','Flores','3001110014','Comunicación Social',163,6),
('Daniel','Mejía','Naranjo','3001110015','Matemáticas',182,7),
('Natalia','Quintero','Soto','3001110016','Biología',159,6),
('Sebastián','Bermúdez','Acosta','3001110017','Física',177,5),
('Lucía','Cabrera','Montoya','3001110018','Química',164,6),
('Felipe','Castaño','Gil','3001110019','Ingeniería Industrial',179,7),
('Juliana','Ocampo','Vélez','3001110020','Trabajo Social',161,5),

('Esteban','Pardo','Muñoz','3001110021','Historia',173,4),
('Manuela','Beltrán','Serna','3001110022','Arte',158,5),
('Ricardo','Aguilar','Fajardo','3001110023','Contaduría',181,6),
('Andrea','Linares','Patiño','3001110024','Marketing',166,6),
('Hugo','Villalba','Restrepo','3001110025','Ingeniería Mecánica',183,7),
('Diana','Vallejo','Osorio','3001110026','Educación',162,5),
('Oscar','Molina','Zapata','3001110027','Derecho',174,6),
('Isabella','Franco','Cifuentes','3001110028','Relaciones Internacionales',160,6),
('Tomás','Nieto','Pulido','3001110029','Estadística',178,7),
('Karen','Prieto','Gaitán','3001110030','Finanzas',165,6),

('Mauricio','Correa','Bustamante','3001110031','Ingeniería de Sistemas',182,7),
('Lorena','Cardona','Roldán','3001110032','Psicología',159,6),
('Fernando','López','Hoyos','3001110033','Economía',176,5),
('Paola','Márquez','Delgado','3001110034','Administración',164,6),
('Iván','Santana','Rocha','3001110035','Ingeniería Ambiental',180,7),
('Claudia','Reyes','Salinas','3001110036','Enfermería',157,6),
('Brayan','Espinosa','Cano','3001110037','Tecnología en Sistemas',172,5),
('Tatiana','Medina','Rueda','3001110038','Comunicación Social',163,6),
('Kevin','Arango','Londoño','3001110039','Ingeniería Civil',179,7),
('Yuliana','Pacheco','Guerra','3001110040','Derecho',161,6),

('Alex','Forero','Camacho','3001110041','Ingeniería Industrial',175,7),
('Milena','Salcedo','Bonilla','3001110042','Contaduría',158,5),
('Cristian','Bolaños','Cruz','3001110043','Matemáticas',181,6),
('Nicol','Figueroa','Peralta','3001110044','Biología',160,6),
('Jonathan','Rojas','Ibarra','3001110045','Física',178,7),
('Angela','Vargas','Córdoba','3001110046','Química',162,6),
('Santiago','Parra','Rozo','3001110047','Ingeniería Electrónica',183,7),
('Melissa','Leiva','Tapias','3001110048','Marketing',164,5),
('Emilio','Gutiérrez','Monroy','3001110049','Historia',176,4),
('Verónica','Mendoza','Ayala','3001110050','Educación',159,5);


#SELECCIONES
SELECT * FROM datos_estudiantes WHERE Altura>150;
SELECT COUNT(*) FROM datos_estudiantes WHERE Altura >150 ; #Selecciona o muestra
#Cuantos tienen una estatura mayor a  150.
SELECT COUNT(*) FROM datos_estudiantes WHERE Altura<150; #Nos dice cuantos tienen una estatura menor a 150.

SELECT * FROM datos_estudiantes WHERE SegundoApellido REGEXP "^P"; #Nos dice todos los datos que tienen segundo apellido
#Que empieza con P 

#Para la clausula REGEXP es como operaciones REGEX que buscan patrones en cadenas 
#Aqui estan algunos simbolos que nos ayudan a encontrar estos patrones, y cada simbolo
#Especifica lo que queremos de esa cadena. Por ejemplo

/*
^: Significa que empiza, entonces en el ejmplo anterior hicimos uso de 
^P -> Lo que nos quiere decir que las palabras que empiezan con P.
.: Significa cualquier caracter. Ejemplo:
*/
SELECT * FROM datos_estudiantes WHERE Nombre REGEXP "^D.*";
SELECT * FROM datos_estudiantes WHERE Nombre REGEXP "^V.*e.*a$";
/*
En el primer ejemplo se dice, el que empiece en D, y tenga cualquier caracter 0 o muchas veces
Nos aparece Diego, porque empieza con D y además tiene iego que sería cualquier caracter 
y varios 0 o varias veces
En el segundo ejemplo, que empiece con V, y luego que tenga 0 o varios caracteres hasta que 
encuentra una e, una vez se encuentra se repite lo mismo, 0 o varios caracteres los que fueran
y que termine en a,
nos da
Veronica -> Empieza con v, tiene 0 caracteres hasta la primera e, y luego termina en a
Valentina -> Empieza con v, tiene 2 caracteres hasta la primera e, y luego termina en a.


*: Significa 0 o muchos, como vimos en los ejemplos anteriores.
$: Que la cadena termine con ese caracter, entonces por EJEMPLO
*/
SELECT * FROM datos_estudiantes WHERE Nombre REGEXP "a$"; #Todos los que terminan en A

/*
[A-Za-z] : Hace referencia a cualquier letra sea A hasta la Z mayusculas, o a hasta la z
mayusculas

*/
SELECT * FROM datos_estudiantes WHERE Nombre REGEXP "^V[A-Za-z]*e[A-Za-z]*a$";
SELECT * FROM datos_estudiantes WHERE Nombre REGEXP "^V[A-Za-z]*e[A-Za-záéíóúÁÉÍÓÚñÑ]*a$";
#Al parecer lo que es REGEXP no incluye cosas como tildes o la Ñ por lo que a veces puede ser necesario incluirlas explicitamente
#Tambien sucede lo mismo con [0-9] Que es cualquier digito EJEMPLO

SELECT * FROM datos_estudiantes WHERE telefono REGEXP "[0-9]*4$";
#Eso sería muchas de las cosas que se pueden hacer con REGEXP y es muy útil para encontra patrones
#Hay otras cosas que se pueden hacer con SELECT, COSAS como LIMIT, GROUP BY, 
SELECT Carrera FROM datos_estudiantes GROUP BY Carrera; #Asi nos muestran las categoricas
#Unique:

SELECT DISTINCT Carrera  FROM datos_estudiantes ;#Asi nos muestra los distintos

SELECT Carrera,COUNT(Carrera) FROM datos_estudiantes GROUP BY Carrera;
#Con el group by y combinando con otras cosas, podemos mostrar el promedio, el contador
#Entre otras cosas
SELECT Carrera, AVG(Altura) FROM datos_estudiantes GROUP BY Carrera; #Se pueden agrupar muchas cosas

#Ahora vamos a ver, delete alter y update

SELECT * FROM datos_estudiantes;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM datos_estudiantes WHERE Nombre ="Juan";
#Podemos ir eliminando Datos
DELETE FROM datos_estudiantes WHERE Nombre REGEXP "^D";
DELETE FROM datos_estudiantes WHERE Nombre REGEXP "^V.*e";
DELETE FROM datos_estudiantes WHERE Altura <150;
Delete FROM datos_estudiantes WHERE Altura = 165;
DELETE FROM datos_estudiantes WHERE Nombre REGEXP "^N";
#Asi sucesivamente, el comando para eliminar de hecho es muy simple, lo unico es que se usan
/*Las mismas cosas que con el select, es bastante sencillo. Simplemente escribir
DELETE FROM datos_estudiantes ... el nombre de la tabla y la condicion, basta para eliminar*/

#Vamos a ver ahora como modificar las especificaciones de una tabla
ALTER TABLE datos_estudiantes ADD COLUMN salario INT DEFAULT 0000; 
ALTER TABLE datos_estudiantes MODIFY Nombre Varchar(40);
ALTER TABLE datos_estudiantes MODIFY SegundoApellido Varchar(40) Unique;

#Como añadir columnas
ALTER TABLE datos_estudiantes ADD COLUMN IQ INT DEFAULT 150;
ALTER TABLE datos_estudiantes ADD COLUMN Madre VARCHAR(50);

#Ya vimos antes como modificar columnas, ahora como cambiar el nombre

ALTER TABLE datos_estudiantes RENAME COLUMN salario TO salary;
ALTER TABLE datos_estudiantes RENAME COLUMN Nombre TO first_name;
ALTER TABLE datos_estudiantes RENAME COLUMN Apellido TO Last_Name;
ALTER TABLE datos_estudiantes RENAME COLUMN Telefono TO phone;
ALTER TABLE datos_estudiantes RENAME COLUMN Madre TO Mother_Name;
#De esta forma se cambia el nombre siempre se debe empezar con
##ALTER TABLE (nombre de tabla) Y LA ACCION QUE ES
## MODIFY: Para cambiar especificaciones de una columna
/*
RENAME COLUMN : para cmabiar el nombre de una colummna
ADD COLUMN: Para añadir una columna;
*/

SELECT * FROM datos_estudiantes;

#Como cambiar datos??

UPDATE datos_estudiantes SET First_name="Maria" WHERE First_name = "Carlos";
UPDATE datos_estudiantes SET Last_Name = "Garces" WHERE Last_name = "García";
UPDATE datos_estudiantes SET Altura = 180 WHERE Carrera REGEXP "^D";
##Para el UPDATE se hace
/*
UPDATE (nombre_de la tabla) SET (que columna queremos cambiar?, el nobmre o lo que sea) WHERE (condicion).
Es muy sencillo, pero siento que sirve mas para cambiar valoers concretos, mas que cambiar
muchos valores de una tabla.
Hay otra cosas como el INNER JOIN que no vamos a tratar, porque ya hemos visto mucho de ello.
*/