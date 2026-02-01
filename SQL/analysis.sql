
-- Customer Lifetime Value
SELECT customer_id, SUM(order_amount) AS lifetime_value
FROM orders
GROUP BY customer_id;

-- Customer Segmentation
SELECT customer_id,
       SUM(order_amount) AS total_spent,
       CASE
           WHEN SUM(order_amount) < 5000 THEN 'Low Value'
           WHEN SUM(order_amount) BETWEEN 5000 AND 20000 THEN 'Medium Value'
           ELSE 'High Value'
       END AS customer_segment
FROM orders
GROUP BY customer_id;

-- Repeat Customers
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;
