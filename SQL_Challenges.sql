-- SQL Challenges

-- Find all products
SELECT * FROM products;

-- Find all prods that cost 1400
SELECT * FROM products
WHERE Price = 1400;

-- Find all prods price = 11.99 or 13.99
SELECT * FROM products
WHERE Price BETWEEN 11.99 AND 13.99; -- 11.99 OR Price = 13.99;

-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM products
WHERE NOT Price = 11.99;

-- find all products and sort them by price from greatest to least
SELECT * FROM products
ORDER BY Price DESC;

-- find all employees who don't have a middle initial
SELECT * FROM employees
WHERE MiddleInitial IS NULL OR MiddleInitial = '';

-- find distinct product prices
SELECT DISTINCT Price FROM Products;

-- find all employees whose first name starts with the letter ‘j’
SELECT * FROM employees
WHERE FirstName LIKE 'j%';

-- find all Macbooks
SELECT Name, Price FROM products
WHERE Name = 'MACBOOK';

-- find all products that are on sale
SELECT * FROM products
WHERE OnSale = 1; -- WHERE OnSale = true;

-- find the average price of all products
SELECT ROUND(AVG(Price), 2) AS 'Average Price' FROM products;

-- find all Geek Squad employees who don't have a middle initial
SELECT * FROM employees
WHERE MiddleInitial IS NULL AND Title = 'geek squad';

-- find all products from the products table whose stock level
-- is in the range of 500 to 1200.
-- Order by Price from least to greatest.
-- **Try this with the between keyword**

SELECT * FROM products
WHERE StockLevel BETWEEN 500 AND 1200
ORDER BY Price ASC, StockLevel DESC;

-- joins
SELECT * FROM sales;
SELECT * FROM products;

-- Inner Join
SELECT SalesID, sales.ProductID AS 'Sales Prod ID',
 Quantity, products.ProductID, Name, Price FROM sales
INNER JOIN products
ON sales.ProductID = products.ProductID;

-- Left Join
SELECT SalesID, sales.ProductID AS 'Sales Prod ID',
 Quantity, products.ProductID, Name, Price FROM sales -- < LEFT TABLE
LEFT JOIN products -- < RIGHT TABLE
ON sales.ProductID = products.ProductID;

-- Right Join .1% OF THE TIME
SELECT SalesID, sales.ProductID AS 'Sales Prod ID',
 Quantity, products.ProductID, Name, Price FROM sales
RIGHT JOIN products
ON sales.ProductID = products.ProductID;

-- Another change
