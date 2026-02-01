
-- Data Cleaning Queries

-- Remove NULL values
DELETE FROM customers WHERE customer_id IS NULL;
DELETE FROM orders WHERE order_amount IS NULL;

-- Remove negative revenue (returns)
DELETE FROM orders WHERE order_amount < 0;
