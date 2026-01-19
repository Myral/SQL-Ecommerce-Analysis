-- Sample Business Question: "Which customers generated more than $50 in revenue?" (Bob Smith, 95; Alice Johnson, 85)
SELECT customers.name, SUM(products.price * orders.quantity) AS total_spent
FROM customers
INNER JOIN orders 
	ON customers.customer_id = orders.customer_id
INNER JOIN products 
    ON orders.product_id = products.product_id
GROUP BY customers.customer_id, customers.name
HAVING -- Sample Business Question: "Which customers generated more than $50 in revenue?" (Bob Smith, 95; Alice Johnson, 85)
SELECT customers.name, SUM(products.price * orders.quantity) AS total_spent
FROM customers
INNER JOIN orders 
	ON customers.customer_id = orders.customer_id
INNER JOIN products 
    ON orders.product_id = products.product_id
GROUP BY customers.customer_id, customers.name
HAVING total_spent >50
ORDER BY total_spent DESC;



-- Total revenue generated (480)
SELECT SUM(products.price * orders.quantity) AS total_spent
FROM customers
INNER JOIN orders 
	ON customers.customer_id = orders.customer_id
INNER JOIN products 
    ON orders.product_id = products.product_id >50
ORDER BY total_spent DESC;



-- Total revenue generated (480)
SELECT SUM(products.price * orders.quantity) AS grand_total
FROM orders
INNER JOIN products 
    ON orders.product_id = products.product_id;

