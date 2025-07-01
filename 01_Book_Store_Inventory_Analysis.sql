-- 📚 SQL Project: Book Store Inventory Analysis

-- This project explores essential and advanced SQL queries 
-- to analyze book stock levels, customer behavior, and sales performance 
-- using a book store database.

-- Let's get started!

-- 1) Retrieve the total number of books sold for each genre

SELECT DISTINCT GENRE,SUM(QUANTITY) 
AS TOTAL_SOLD FROM BOOKS
INNER JOIN ORDERS
ON books.Book_ID=orders.Book_ID
GROUP BY GENRE;

-- 2) Find the average price of books in the "Fantasy" genre

SELECT GENRE, ROUND(AVG(PRICE),2) FROM BOOKS
WHERE GENRE ="Fantasy"
GROUP BY GENRE;


-- 3) List customers who have placed at least 2 orders

SELECT NAME 
FROM CUSTOMERS
JOIN ORDERS ON CUSTOMERS.Customer_ID = ORDERS.Customer_ID
GROUP BY CUSTOMERS.Customer_ID, NAME
HAVING COUNT(ORDER_ID) >= 2;

-- 4) Find the most frequently ordered book

SELECT TITLE,SUM(QUANTITY) AS TOTAL_SOLD FROM BOOKS
INNER JOIN ORDERS
ON books.Book_ID=orders.Book_ID
GROUP BY TITLE
order by TOTAL_SOLD DESC
LIMIT 1;

-- 5) Show the top 3 most expensive books of 'Fantasy' Genre

SELECT TITLE ,PRICE FROM BOOKS
WHERE GENRE ="Fantasy"
ORDER BY PRICE DESC
limit 3 ;

-- 6) Retrieve the total quantity of books sold by each author

SELECT AUTHOR,SUM(QUANTITY) AS TOTAL_SOLD FROM BOOKS
INNER JOIN ORDERS
ON books.Book_ID=orders.Book_ID
GROUP BY AUTHOR
order by TOTAL_SOLD DESC;

-- 7) List the cities where customers who spent over $30 

SELECT DISTINCT customers.city
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.city
HAVING SUM(orders.total_amount) > 30;

-- 8) Find the customer who spent the most on orders

SELECT name 
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY  name 
order by sum(orders.total_amount) desc
limit 1 ;

-- 9) Calculate the stock remaining after fulfilling all orders

SELECT 
    books.book_id,
    books.title,
    books.stock - IFNULL(SUM(orders.quantity), 0) AS remaining_stock
FROM books
LEFT JOIN orders ON books.book_id = orders.book_id
GROUP BY books.book_id, books.title, books.stock;


 -- 10)Find books published after the year 1950
 
 SELECT TITLE FROM books
 WHERE Published_Year>1950;

-- 11) List all customers from the Canada

SELECT NAME FROM CUSTOMERS
WHERE Country ='Canada';

-- 12) Calculate the total revenue generated from all orders

SELECT Round(SUM(TOTAL_AMOUNT),2) FROM ORDERS 
AS TOTAL_REVENUE;

-- 13) Retrieve the total stock of books available

SELECT SUM(STOCK)
AS TOTAL_STOCK FROM BOOKS ;

-- 14) Find the details of the most expensive book

SELECT * FROM BOOKS
ORDER BY PRICE DESC
LIMIT 1 ;

-- 15) Show all customers who ordered more than 1 quantity of a book

SELECT NAME FROM CUSTOMERS
JOIN ORDERS
ON customers.Customer_ID=orders.Customer_ID
WHERE QUANTITY >1;

-- 16) Retrieve all orders where the total amount exceeds $20

SELECT ORDER_ID FROM ORDERS
WHERE TOTAL_AMOUNT>20
ORDER BY ORDER_ID;

-- 17) List all genres available in the Books table

SELECT distinct GENRE FROM BOOKS;

-- 18) Find the book with the lowest stock

SELECT * FROM BOOKS
ORDER BY STOCK 
LIMIT 1 ;

-- 19) Show orders placed in November 2023

 SELECT TITLE FROM BOOKS
 JOIN ORDERS
 ON books.Book_ID=orders.Book_ID
 WHERE MONTH(ORDER_DATE)=11 AND YEAR(ORDER_DATE)=2023;

-- All queries executed successfully.

-- ✅ End of Project: Book Store Inventory Analysis

-- In this project, we used SQL to extract key insights such as:
-- • Best-selling books and genres
-- • Top spending customers
-- • Remaining stock levels
-- • Revenue and order trends

-- This analysis demonstrates how SQL can support inventory tracking, customer insights,
-- And business decision-making in a retail environment.



