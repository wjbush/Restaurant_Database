/*One customer makes many orders*/
SELECT Meals FROM Orders WHERE Customer_ID = 0687;
/*Menu items can be broken down into categories*/
SELECT * FROM Entrees WHERE Sides IS NOT NULL;
/*One customer can place many orders*/
SELECT Customer_ID FROM Orders GROUP BY Customer_ID HAVING COUNT(*) > 1;
/*Customer have a First Name, Last Name, Email, Phone, And Id*/
SELECT Customer_FNAME, Customer_LNAME, Email, Phone_Num, Order_Id FROM Customers LEFT OUTER JOIN Orders ON Customers.Customer_ID = Orders.Customer_ID;
/*One Item can be ordered by multiple people*/
SELECT Meals, COUNT(ALL Price) FROM Orders GROUP BY Meals;
-- UPDATE CHEF 
-- SET Chef_Salary = '55000'
-- WHERE 'Chef_Name' = 'Matt Wedbetter';

-- SHOW TABLES;
-- SELECT * FROM CHEF;

UPDATE CHEF 
SET Chef_Salary = 60000
WHERE Chef_ID = 103510;

-- Update Operation to modify value involving two or more tables.
-- Scenario: Customer changed their ID from their email to 0711.

UPDATE Customers, Orders
SET Customers.Customer_ID = 0711,
	Orders.Customer_ID = 0711
WHERE Customers.Customer_ID = Orders.Customer_ID 
AND Orders.Customer_ID = 0701;

-- Update Operation remove data from the database that involved two tables
-- Scenario: Customer 0700 wanted to removed as a member from the restaurant.

DELETE FROM Customers WHERE Customer_ID = 0700;
DELETE FROM Orders WHERE Customer_ID = 0700;

SHOW TABLES;
SELECT * FROM CHEF;
SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Entrees;