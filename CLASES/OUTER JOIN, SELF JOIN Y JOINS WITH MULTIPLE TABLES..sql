use proyect;
#IS NULL: sirve para ver donde es NULL
select * from nombre_tabla WHERE telefono  IS NULL;

# CONECTAR BASES DE DATOS #
SELECT * FROM nombre_tabla AS Tab JOIN new_database_third.datos_estudiantes AS Est ON Tab.ID = Est.CC;

#SELF JOINS

CREATE DATABASE Sura;
USE Sura;
CREATE TABLE Employees(
	Employe_id INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(40) NOT NULL,
    Address Varchar(50) ,
    Roll Varchar(50),
    Age int NOT NULL,
    blood_type Varchar(5),
    referst_to int,
    salary int not null 
    
);
INSERT INTO Employees 
(First_Name, Last_Name, Address, Roll, Age, blood_type, referst_to, salary)
VALUES
-- CEOs
('Carlos','Gomez','Medellin','CEO',55,'O+',NULL,15000000),
('Ana','Martinez','Bogota','CEO',50,'A+',NULL,14500000),
('Luis','Ramirez','Cali','CEO',53,'B+',NULL,14800000),

-- Employees reporting to CEO 1
('Juan','Perez','Medellin','Manager',38,'O+',1,6000000),
('Laura','Lopez','Medellin','Analyst',29,'A+',1,4200000),
('Sofia','Torres','Envigado','Developer',26,'B+',1,4500000),
('Miguel','Hernandez','Bello','Developer',31,'O-',1,4700000),
('Daniel','Castro','Itagui','Support',24,'A-',1,2800000),
('Camila','Restrepo','Medellin','HR',34,'AB+',1,4000000),
('Andres','Vargas','Medellin','QA',28,'B-',1,3900000),
('Paula','Jimenez','Sabaneta','Designer',27,'O+',1,4100000),
('Felipe','Rios','Medellin','Intern',22,'A+',1,1800000),
('Natalia','Suarez','Medellin','Finance',35,'O+',1,5200000),
('Jorge','Molina','Medellin','SysAdmin',40,'AB-',1,5800000),
('Maria','Arias','Medellin','Marketing',32,'A-',1,4600000),

-- Employees reporting to CEO 2
('Ricardo','Diaz','Bogota','Manager',41,'O+',2,6100000),
('Angela','Moreno','Bogota','Analyst',30,'B+',2,4300000),
('Sebastian','Ortega','Soacha','Developer',27,'A+',2,4500000),
('Valentina','Ruiz','Bogota','Designer',25,'O-',2,4000000),
('Cristian','Silva','Bogota','Support',23,'A-',2,2700000),
('Juliana','Mejia','Bogota','HR',36,'B+',2,4200000),
('Oscar','Pineda','Bogota','QA',29,'O+',2,3900000),
('Diego','Salazar','Bogota','Finance',34,'AB+',2,5300000),
('Tatiana','Cortes','Bogota','Marketing',31,'A+',2,4500000),
('Kevin','Reyes','Bogota','Intern',21,'O+',2,1700000),
('Monica','Fajardo','Bogota','SysAdmin',39,'B-',2,5700000),
('Esteban','Lara','Bogota','Developer',33,'A-',2,4800000),

-- Employees reporting to CEO 3
('Fernando','Nuñez','Cali','Manager',42,'O+',3,6200000),
('Adriana','Palacios','Cali','Analyst',28,'A+',3,4300000),
('Santiago','Muñoz','Palmira','Developer',26,'B+',3,4500000),
('Lorena','Cardona','Cali','Designer',27,'O-',3,4000000),
('Mauricio','Peña','Cali','Support',24,'A-',3,2800000),
('Claudia','Vallejo','Cali','HR',37,'AB+',3,4300000),
('Ivan','Aguilar','Cali','QA',30,'B-',3,3900000),
('Patricia','Zapata','Cali','Finance',35,'O+',3,5200000),
('Alejandro','Cruz','Cali','Marketing',32,'A+',3,4600000),
('Brayan','Rendon','Cali','Intern',22,'O+',3,1800000),
('Rosa','Mendoza','Cali','SysAdmin',41,'AB-',3,5800000),
('Hector','Quintero','Cali','Developer',34,'A-',3,4900000);

select * from employees;

#SELF JOIN

SELECT e.Employe_id , e.referst_to, e.First_name,m.Employe_id ,m.First_name as ManagerName FROM employees AS e JOIN employees AS m ON e.referst_to = m.Employe_id;


#¿How to Join MORE than two tables?
/*
Hacer join con multiples tablas no es algo raro, de hecho es algo muy común y se suele hacer mucho
tiene muchas aplicaciones y se ha llegado hasta hacer join con 10 tablas o mas
entonces es algo común
*/
USE new_database_third;

SELECT * FROM datos_estudiantes AS est JOIN proyect.nombre_tabla AS Fath 
ON 
est.CC = Fath.ID
JOIN basededatosperros.perros AS perr  ON est.first_name = perr.dueño;

#Además para hacer un join con una tabla se puede hacer con multiples condiciones

USE proyect;

SELECT * FROM employee_sons;
SELECT * FROM nombre_tabla;
SELECT * FROM tabla_prueba;

#Por ejemplo
SELECT * FROM tabla_prueba AS tp JOIN employee_sons AS es ON tp.CC=es.CC AND es.age +10 = tp.edad;

SELECT * FROM tabla_prueba AS tp JOIN basededatosperros.perros AS perros ON 
tp.CC = perros.ID +1000 AND tp.nombre = perros.Dueño;
#aqui podemos ver que se hace un join tomando en cuenta dos condiciones
#Así se pueden hacer 2 condiciones.


#OUTER JOIN

SELECT * FROM tabla_prueba AS tp RIGHT JOIN basededatosperros.perros AS perros ON
tp.CC = perros.ID +1000 AND tp.nombre=perros.Dueño;

SELECT * FROM tabla_prueba AS tp LEFT JOIN basededatosperros.perros AS perros ON 
tp.CC = perros.ID + 1000 AND tp.nombre = perros.Dueño;

#Los outer JOINS lo que permiten es que dan los datos de alguna tabla independientemente
/* De si tienen un dato o no, entonces por ejemplo cuando se usa el LEFT JOIN lo que 
se quiere ver, es mostrar todos los datos de la izquierda independientemente de si
hay datos o no en la otra tabla
lo mismo con el RIGHT JOIN muestra todos los datos de la derecha independientemente de si
hay valores con los que hacer JOIN con la condicion.

*/
