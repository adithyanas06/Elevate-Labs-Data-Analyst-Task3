SQL Queries

select *FROM customers;

SELECT *
 FROM orders 
WHERE total_amount >5000;

SELECT *
FROM products
ORDER BY price DESC;

SELECT customer_id,
COUNT(*) AS TotalOrders
FROM orders
GROUP BY customer_id;

SELECT SUM(total_amount)
FROM orders;

SELECT AVG(total_amount)
FROM orders;

SELECT MAX(total_amount)
FROM orders;

SELECT customers.customer_name,
orders.order_id,
orders.total_amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;

SELECT customers.customer_name,
orders.order_id
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;

SELECT *
FROM orders
WHERE total_amount >
(
SELECT AVG(total_amount)
FROM orders
);

CREATE VIEW CustomerSales AS

SELECT customer_id,
SUM(total_amount) AS TotalSales

FROM orders

GROUP BY customer_id;

SELECT * FROM CustomerSales;

CREATE INDEX idx_customer
ON orders(customer_id);