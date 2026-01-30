#REPASO
USE new_database_third;

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM customers LIMIT 5;
#REGEXP
SELECT * FROM customers WHERE Direccion REGEXP "Av";
SELECT * FROM customers WHERE Direccion REGEXP "Cal";

SELECT * FROM customers WHERE apellido REGEXP "^B";
SELECT * FROM customers WHERE Direccion REGEXP  "^Ca.*12$";
SELECT * FROM customers WHERE First_Name REGEXP ".*e.*a" OR Edad<20;
SELECT * FROM customers WHERE Ocupation REGEXP "^[Saeri]";

ALTER TABLE customers RENAME COLUMN Edad TO edadd;
ALTER TABLE customers RENAME COLUMN Ocupation TO ocupacion;
ALTER TABLE customers MODIFY COLUMN ocupacion VARCHAR(50) NOT NULL;
ALTER TABLE customers ADD COLUMN IQ INT DEFAULT(150+puntos-54);
ALTER TABLE customers DROP COLUMN IQ;
ALTER TABLE customers RENAME COLUMN edadd TO edad;
SELECT  * FROM customers;
UPDATE customers SET edad =  edad-10 ;
SELECT * FROM customers WHERE First_Name REGEXP "^Alejo";

UPDATE customers SET First_Name = CONCAT(First_Name , " Manuel") WHERE First_Name= "Juan";
UPDATE customers SET First_Name= CONCAT(First_Name," Perez") WHERE First_Name = "Alejo";

SELECT First_Name,apellido,edad, "Menor" AS Rango FROM customers WHERE edad<18
UNION
SELECT First_Name,apellido,edad,"Mayor" AS RANGO FROM customers WHERE edad>=18;


SELECT * FROM customers JOIN orders USING(Customer_id) JOIN order_state ON orders.Order_id=order_state.Order_id;

SELECT c.First_Name,p.First_Name FROM customers AS c JOIN customers AS p ON c.Customer_id = p.edad;

SELECT * FROM customers;
SELECT ocupacion, AVG(puntos) FROM customers GROUP BY ocupacion; 
SELECT * FROM customers;
SELECT * from orders;
SELECT * FROM customers JOIN orders USING(Customer_id);

SELECT Ocupacion,Request FROM customers JOIN orders USING(Customer_id) JOIN order_state GROUP BY Ocupacion, Request; 

SELECT DISTINCT Ocupacion  from customers ORDER BY Ocupacion;
SELECT * FROM order_state;
SELECT Order_Status, Company,COUNT(*) AS Entregados 
FROM order_state WHERE Order_Status = "Delivered" GROUP BY Order_Status,Company
UNION
SELECT Order_Status, Company,COUNT(*) AS Entregados
 FROM order_state WHERE Order_Status = "Pending" GROUP BY Order_Status,Company 
 ORDER BY Company,Order_Status;
 
ALTER TABLE customers DROP PRIMARY KEY;
SELECT * FROM customers;
ALTER TABLE customers MODIFY COLUMN Customer_id INT ;
ALTER TABLE customers MODIFY COLUMN Customer_id INT PRIMARY KEY;
