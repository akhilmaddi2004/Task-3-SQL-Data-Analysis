-- 1. SELECT + WHERE + ORDER BY
SELECT product_name, category
FROM products
WHERE category = 'Electronics'
ORDER BY product_name ASC;

-- 2. GROUP BY + aggregates
SELECT category, SUM(price * quantity) AS total_revenue
FROM products
JOIN order_items USING(product_id)
GROUP BY category
ORDER BY total_revenue DESC;

-- 3. INNER JOIN
SELECT o.order_id, c.customer_name, o.total_amount
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;

-- 4. LEFT JOIN
SELECT c.customer_name, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- 5. SUBQUERY
SELECT customer_name, total_spent
FROM (
    SELECT c.customer_name, SUM(o.total_amount) AS total_spent
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
) AS t
ORDER BY total_spent DESC
LIMIT 3;

-- 6. VIEW
CREATE VIEW revenue_summary AS
SELECT p.category,
       SUM(oi.quantity * oi.price) AS revenue
FROM products p
JOIN order_items oi USING(product_id)
GROUP BY p.category;

-- 7. INDEX
CREATE INDEX idx_orders_customer_id ON orders(customer_id);

SELECT * FROM revenue_summary;
