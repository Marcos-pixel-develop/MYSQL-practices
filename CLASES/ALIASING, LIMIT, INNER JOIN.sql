#REPASO DE LOS VISTO HASTA AHORA
#Podemos hacer la creacion de una base de datos
CREATE DATABASE condimentos;
USE condimentos;
#TABLAS

CREATE TABLE alimentos(
	ID INT PRIMARY KEY,
	nombre_del_plato VARCHAR(50) UNIQUE NOT NULL,
	salsa VARCHAR(40) DEFAULT "salsa roja",
    bebida VARCHAR(60) ,
    verdura1 VARCHAR(50),
    verdura2 VARCHAR(50),
    tiempo_de_coccion int
);
INSERT INTO alimentos VALUES (12012,"salsa a la parba","mayonesa","milo","cebolla","zanahoria",50 ),
(1892,"hamburguesa","roja","gaseosa","lechuga","cebolla",20);
select * from alimentos;

INSERT INTO alimentos VALUES
(1001,'hamburguesa clasica','salsa roja','gaseosa','lechuga','cebolla',20),
(1002,'hamburguesa doble','BBQ','cola','lechuga','tomate',25),
(1003,'pizza margarita','tomate','agua','albahaca','tomate',30),
(1004,'pizza pepperoni','tomate','gaseosa','oregano','aceitunas',35),
(1005,'hot dog sencillo','mostaza','cola','cebolla','repollo',15),
(1006,'hot dog especial','mayonesa','gaseosa','cebolla','zanahoria',18),
(1007,'ensalada cesar','cesar','agua','lechuga','pollo',10),
(1008,'ensalada mixta','vinagreta','jugo','lechuga','zanahoria',8),
(1009,'tacos al pastor','verde','horchata','cebolla','cilantro',22),
(1010,'tacos de carne','roja','jamaica','cebolla','lechuga',20),

(1011,'arroz con pollo','criolla','limonada','zanahoria','arveja',40),
(1012,'arroz chino','soya','te frio','cebolla','zanahoria',35),
(1013,'spaghetti bolognesa','tomate','vino tinto','cebolla','zanahoria',45),
(1014,'spaghetti carbonara','blanca','agua','cebolla','champiñon',40),
(1015,'lasagna tradicional','tomate','gaseosa','espinaca','zanahoria',60),

(1016,'pollo asado','BBQ','cola','papa','ensalada',50),
(1017,'pollo frito','mayonesa','gaseosa','repollo','zanahoria',35),
(1018,'pechuga a la plancha','mostaza','agua','brocoli','zanahoria',25),
(1019,'carne asada','chimichurri','cerveza','papa','ensalada',45),
(1020,'carne en salsa','criolla','jugo','cebolla','pimenton',55),

(1021,'sopa de verduras','hogao','agua','zanahoria','papa',30),
(1022,'sancocho','criolla','jugo','yuca','platano',90),
(1023,'lentejas','hogao','limonada','zanahoria','papa',50),
(1024,'frijoles','hogao','jugo','zanahoria','platano',60),
(1025,'garbanzos guisados','tomate','agua','cebolla','pimenton',55),

(1026,'arepa rellena','mayonesa','chocolate','lechuga','tomate',10),
(1027,'empanadas','aji','gaseosa','papa','carne',12),
(1028,'patacones','hogao','limonada','aguacate','tomate',15),
(1029,'tamales','criolla','chocolate','zanahoria','arveja',80),
(1030,'bandeja paisa','hogao','cola','aguacate','platano',70),

(1031,'ceviche','limon','cerveza','cebolla','cilantro',20),
(1032,'pescado frito','ajo','gaseosa','ensalada','patacon',35),
(1033,'pescado al horno','limon','agua','cebolla','zanahoria',45),

(1034,'sandwich de pollo','mayonesa','gaseosa','lechuga','tomate',12),
(1035,'sandwich de jamon','mostaza','jugo','lechuga','cebolla',10),
(1036,'sandwich vegetariano','vinagreta','agua','espinaca','tomate',8),

(1037,'wrap de pollo','cesar','limonada','lechuga','zanahoria',15),
(1038,'wrap vegetariano','vinagreta','agua','espinaca','pepino',12),
(1039,'quiche de verduras','blanca','te','brocoli','zanahoria',45),
(1040,'omelette','queso','cafe','cebolla','pimenton',10),

(1041,'arroz a la cubana','tomate','jugo','platano','huevo',30),
(1042,'fideos orientales','soya','te verde','cebolla','zanahoria',25),
(1043,'ramen','miso','te','cebolla','alga',40),
(1044,'paella','mariscos','vino blanco','pimenton','arveja',60),
(1045,'risotto','queso','vino','champiñon','cebolla',50);
#ALGUNAS CON REGEXP 
select * from alimentos WHERE verdura1 REGEXP "^c|^p";

SELECT * FROM alimentos WHERE nombre_del_plato REGEXP "^r" LIMIT 5;

#MODIFICAR LA TABLA
ALTER TABLE alimentos ADD COLUMN vegano VARCHAR(2);
UPDATE  alimentos SET bebida ="gaseosa con limon" WHERE bebida="gaseosa";
SET SQL_SAFE_UPDATES = 0;
SELECT * FROM alimentos WHERE bebida REGEXP "^g" ;
ALTER TABLE alimentos RENAME COLUMN verdura1 to verdura3;
SELECT*  FROM alimentos;

SELECT salsa,count(salsa) FROM alimentos group by salsa;

SELECT * FROM alimentos;

DELETE FROM alimentos WHERE verdura3 ="lechuga";
SELECT verdura3 ,count(verdura3) FROM alimentos GROUP BY verdura3;
#Hay otras funciones como la de inner join
USE  proyect;
select * FROM tabla_prueba INNER JOIN employee_sons ON tabla_prueba.CC = employee_sons.CC ORDER BY tabla_prueba.nombre DESC;
