
-- Monthly Cohort Analysis
SELECT
    DATE_FORMAT(signup_date, '%Y-%m') AS cohort_month,
    DATE_FORMAT(order_date, '%Y-%m') AS order_month,
    COUNT(DISTINCT o.customer_id) AS customers
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY cohort_month, order_month
ORDER BY cohort_month, order_month;
