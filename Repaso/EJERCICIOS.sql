/*
Escribir un QUERY que produzca el resultado que nos dieron en pantalla

product_id
nombre
quantity
*/
USE new_database_third;
CREATE TABLE Customers(
	Customer_id INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Age INT,
	Address VARCHAR(50),
    Ocupation VARCHAR(50),
	Phone VARCHAR(12) DEFAULT "***********",
    Points INT,
    Birthday datetime NOT NULL
);

CREATE TABLE Orders(
	Customer_id INT AUTO_INCREMENT,
    Order_id INT NOT NULL UNIQUE ,
    Request VARCHAR(50) NOT NULL,
    Shiped_Day datetime NOT NULL,
    Address_To_Be_Shiped VARCHAR(50),
	Quantity INT NOT NULL

);
CREATE TABLE Order_State(
	Order_id INT primary KEY,
    Order_Status VARCHAR(20),
	Company VARCHAR(50)
);

SELECT * FROM Orders;
#Como quitar un primary KEY
/**/
ALTER TABLE Orders MODIFY Customer_id INT;
ALTER TABLE Orders DROP PRIMARY KEY;
ALTER TABLE Orders ADD PRIMARY KEY (Order_id);

SELECT O.Order_id,O.Request,O.Quantity,Os.Order_Status FROM Orders AS O LEFT JOIN Order_State AS Os ON O.Order_id = Os.Order_id ORDER BY O.Quantity;


/*
SELF OUTER JOINS:
Algo a tener en cuenta con los OUTER JOINS es que se pueden hacer tambien con la misma 
tabla, al igual que los INNER JOINS se puede hacer un OUTER JOIN con la misma tabla
y se seleccionarán de acuerdo a si es LEFT o RIGHT al hacer la seleccion
*/

/*USING: El uso de USING es lo mismo que hacer la comparacion con las columnas. Por ejemplo*/
SELECT * FROM customers JOIN orders USING(customer_id); #Es exactamente lo mismo que hemos estado haciendo

#Igualmente se puede hacer uso de USING para hacer referencia a:
#ON (Condicion 1) AND (Condicion2)
#Sería
#USING ( Condicion 1, Condicion 2) 

SELECT * FROM customers;
select * from datos_estudiantes;

SELECT * FROM customers as C JOIN datos_estudiantes as d ON C.Customer_id = d.CC AND 
C.Last_Name = d.Last_Name;


SELECT * FROM customers JOIN datos_estudiantes USING (Last_Name);

#NATURAL JOIN 
/*
Este JOIN hace el JOIN tomando en cuenta todas las columnas que son comunes. Por lo que
puede dar resultados inesperados.
*/

/*CROSS JOIN

Todo se combina con todo
*/

SELECT * FROM customers CROSS JOIN orders;