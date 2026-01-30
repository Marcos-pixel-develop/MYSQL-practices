#REPASO 6

#Como crear una base de datos
CREATE DATABASE BaseDeDatosPerros;
USE BaseDeDatosPerros;
CREATE TABLE Perros(
	ID INT PRIMARY KEY ,
	Nombre VARCHAR(100) DEFAULT "No tiene",
    Dueño VARCHAR(50) DEFAULT "No tiene ",
    Apellido_Dueño Varchar(50)DEFAULT "No tiene ",
    Edad_Perro INT NOT NULL,
    Raza varchar(50) DEFAULT "No tiene",
    Genero char NOT NULL
    
);
INSERT INTO Perros (ID, Nombre, Dueño, Apellido_Dueño, Edad_Perro, Raza, Genero) VALUES
(1,'Max','Juan','Perez',5,'Labrador','M'),
(2,'Luna','Maria','Gomez',3,'Poodle','F'),
(3,'Rocky','Carlos','Lopez',4,'Bulldog','M'),
(4,'Nala','Ana','Martinez',2,'Pastor Alemán','F'),
(5,'Toby','Luis','Rodriguez',6,'Beagle','M'),
(6,'Mia','Sofia','Hernandez',1,'Chihuahua','F'),
(7,'Zeus','Andres','Ramirez',7,'Rottweiler','M'),
(8,'Kira','Laura','Torres',5,'Husky','F'),
(9,'Simba','Diego','Castro',3,'Golden Retriever','M'),
(10,'Bella','Paula','Vargas',4,'Cocker Spaniel','F'),

(11,'Thor','Miguel','Morales',6,'Doberman','M'),
(12,'Coco','Valentina','Rios',2,'Pug','F'),
(13,'Bruno','Felipe','Mendoza',8,'Pastor Belga','M'),
(14,'Lola','Camila','Suarez',3,'Shih Tzu','F'),
(15,'Leo','Daniel','Ortiz',5,'Border Collie','M'),
(16,'Molly','Natalia','Jimenez',4,'Bóxer','F'),
(17,'Duke','Santiago','Silva',6,'Gran Danés','M'),
(18,'Chispa','Angela','Navarro',2,'Pinscher','F'),
(19,'Oso','Ricardo','Peña',9,'Mastín','M'),
(20,'Canela','Juliana','Reyes',3,'Criollo','F'),

(21,'Bobby','Jorge','Cortes',7,'Schnauzer','M'),
(22,'Daisy','Daniela','Acosta',1,'Pomerania','F'),
(23,'Rex','Oscar','Fuentes',10,'Pastor Alemán','M'),
(24,'Lia','Monica','Cabrera',4,'French Poodle','F'),
(25,'Apolo','Hector','Salinas',6,'Pitbull','M'),
(26,'Nina','Patricia','Mejia',2,'Yorkshire','F'),
(27,'Benji','Fernando','Lara',5,'Basset Hound','M'),
(28,'Kiara','Lorena','Arias',3,'Husky','F'),
(29,'Sam','Ivan','Pardo',8,'Labrador','M'),
(30,'Pepa','Claudia','Nieto',4,'Criollo','F'),

(31,'Bolt','Kevin','Soto',2,'Dálmata','M'),
(32,'Maya','Elena','Ruiz',6,'Akita','F'),
(33,'Tango','Roberto','Campos',7,'Pastor Australiano','M'),
(34,'Frida','Mariana','Ramos',3,'Chihuahua','F'),
(35,'Lucas','Esteban','Vega',5,'Weimaraner','M'),
(36,'Pinky','Rosa','León',9,'Poodle','F'),
(37,'Shadow','Alberto','Bravo',6,'Pastor Alemán','M'),
(38,'Sasha','Isabella','Molina',4,'Husky','F'),
(39,'King','Manuel','Fajardo',8,'Rottweiler','M'),
(40,'Miel','Veronica','Gil',2,'Cocker','F'),

(41,'Firulais','Pedro','Nuñez',10,'Criollo','M'),
(42,'Lili','Carolina','Santos',1,'Maltés','F'),
(43,'Copito','Rafael','Guarin',6,'Samoyedo','M'),
(44,'Noa','Andrea','Bustos',3,'Shiba Inu','F'),
(45,'Jack','Wilson','Diaz',7,'Jack Russell','M'),
(46,'Perla','Diana','Cuellar',4,'Pug','F'),
(47,'Neo','Alex','Parra',5,'Border Collie','M'),
(48,'Sol','Tatiana','Moreno',2,'Criollo','F');
select * from Perros;
#REGEXP 

SELECT * FROM Perros WHERE Dueño REGEXP "^J";
SELECT * FROM PERROS WHERE DUEÑO regexp "^[AEIOU]";
SELECT * FROM Perros WHERE Edad_Perro >8;
SELECT * FROM Perros WHERE Nombre REGEXP "^[AEIOU]";
SELECT * FROM Perros WHERE Nombre REGEXP "[AEIOU]$";
SELECT * FROM Perros WHERE Nombre REGEXP "^S.*o";

ALTER TABLE Perros ADD COLUMN Personalidad VARCHAR(4);
ALTER TABLE Perros RENAME COLUMN Name TO Namee;
SELECT * FROM Perros;
ALTER TABLE Perros MODIFY Namee VARCHAR(80);


DELETE FROM Perros WHERE Namee = "Max";

UPDATE Perros SET Namee = "Rich" WHERE Namee="Max";

SELECT * FROM Perros ORDER BY Namee;
SELECT Raza,AVG(Edad_Perro),MIN(Edad_Perro),Max(Edad_Perro) FROM Perros  GROUP BY Raza;
SELECT DISTINCT Raza FROM Perros;