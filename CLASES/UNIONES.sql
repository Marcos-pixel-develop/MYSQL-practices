/*REPASO*/
USE new_database_third;
select * from customers WHERE Ocupation REGEXP "^I";
select * from customers WHERE Ocupation REGEXP "^I|^E";
/*Para RegexP se hace uso de varios indicadores. Entre ellos
^: Hace referencia a que empieza por I 
$: Hace referencia a que termina
.: Hace referencia a cualquier caracter
*: Hace referencia a muchos
[0-9]: Cualquier Digito
[A-Za-z]: Hace referencia a cualquier letra
[aeiou] : Hace refencia a cualquier vocal. Cuando hacemos uso de [adsq] entonces es cualquier 
de esos caracteres
{9} que se repita 9 veces
*/

SELECT * FROM customers WHERE Ocupation REGEXP "^E.*[aeo]$" LIMIT 5;
SELECT * FROM  customers WHERE puntos<200;
SELECT * FROM Customers WHERE Age<30;

ALTER TABLE Customers RENAME COLUMN Points TO puntos;
ALTER TABLE Customers RENAME COLUMN Address TO Direccion;
ALTER TABLE Customers RENAME COLUMN Last_Name TO apellido;
ALTER TABLE Customers RENAME COLUMN Age to Edad;
ALTER TABLE Customers MODIFY COLUMN Customer_id int auto_increment;


UPDATE Customers Edad = 40 WHERE Edad= 20;


Delete from Customers WHERE edad = 20;

SELECT * FROM customers;
SELECT * FROM orders JOIN customers Using(Customer_id);
SELECT * fROM orders JOIN customers ON orders.Customer_id = customers.Customer_id WHERE orders.Request REGEXP "^[LMI]";
SELECT * FROM customers RIGHT JOIN orders USING(Customer_id);
SELECT * FROM order_state CROSS JOIN orders;

SELECT Ocupation, o.Request , count(*) AS "#Of Request" FROM customers c JOIN orders o USING(Customer_id) GROUP BY Ocupation, o.Request;

SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM order_state;

SELECT * FROM customers c JOIN orders o ON c.Customer_id = o.Customer_id  JOIN order_state  os
ON o.Order_id = os.Order_id;

SELECT * FROM customers C JOIN orders O ON C.Edad+980 = O.Order_id;

#Uniones: Las uniones lo que nos permiten es hacer uniones entre dos selecciones: Por ejemplo

SELECT First_Name,puntos,Ocupation, "Aproved" AS "Status" from 
customers WHERE puntos>=150
UNION
SELECT First_Name,puntos,Ocupation, "Not Aproved" AS "Status" FROM
customers WHERE puntos<150;

SELECT C.First_Name,O.Shiped_Day,O.Request,os.Order_Status, "Must be reviewed" AS Status FROM customers AS C 
JOIN orders AS O USING(Customer_id) 
JOIN order_state AS os
WHERE O.Shiped_day<"2025-01-30" AND os.Order_Status ="ShiPped"
UNION 
SELECT C.First_Name,O.Shiped_Day,O.Request,os.Order_Status, "Correct" AS Status FROM customers AS C 
JOIN orders AS O USING(Customer_id) 
JOIN order_state AS os
WHERE O.Shiped_day<"2025-01-30" AND os.Order_Status ="Delivered" 
UNION
SELECT C.First_Name,O.Shiped_Day,O.Request,os.Order_Status, "Must be shiped" AS Status FROM customers AS C 
JOIN orders AS O USING(Customer_id) 
JOIN order_state AS os
WHERE O.Shiped_day<"2025-01-30" AND os.Order_Status ="Pending"
;

SELECT First_Name,Ocupation,puntos,"Empieza por E" AS STATUS FROM customers WHERE Ocupation REGEXP "^E"
UNION
SELECT First_Name,Ocupation,puntos,"Empieza por P" AS STATUS FROM customers WHERE Ocupation REGEXP "^P"
;
SELECT customer_id,first_name,puntos,"Bronze" AS "TYPE" from customers
WHERE puntos <100
UNION
 SELECT customer_id,first_name,puntos,"Silver" AS "TYPE" from customers
WHERE puntos <200 and puntos>100
UNION 

SELECT customer_id,first_name,puntos,"Gold" AS "TYPE" from customers
WHERE puntos <400 and puntos>200
UNION
SELECT customer_id,first_name,puntos,"Diamond" AS "TYPE" from customers
WHERE puntos>400
ORDER BY puntos DESC; 





