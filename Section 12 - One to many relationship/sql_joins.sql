-- cross joins
SELECT * FROM customers, orders;

-- implicit inner joins
SELECT * FROM customers, orders WHERE customers.id = orders.customer_id;

-- explicit inner joins - preferred one
SELECT * FROM customers JOIN orders ON customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount
FROM customers JOIN orders
ON customers.id = orders.customer_id;

-- find the biggest spender so far
SELECT
  first_name,
  last_name,
  SUM(amount) as total_amount
FROM customers
JOIN orders ON customers.id = orders.customer_id
GROUP BY customers.id ORDER BY total_amount DESC;


-- left join
SELECT
  first_name,
  last_name,
  IFNULL(SUM(amount),0) as total_spent
FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id
GROUP BY customers.id ORDER BY total_spent DESC;

-- right join
SELECT
  first_name,
  last_name,
  IFNULL(SUM(amount),0) as total_spent
FROM customers
RIGHT JOIN orders ON customers.id = orders.customer_id
GROUP BY customers.id ORDER BY total_spent DESC;
