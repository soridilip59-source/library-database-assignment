

-- REPORT 1:
-- Customer name and item for Pune customers' orders
-- Using INNER JOIN
-- Sorted by name and then item

SELECT
    customers.name,
    orders.item
FROM customers
INNER JOIN orders
    ON customers.id = orders.customer_id
WHERE customers.city = 'Pune'
ORDER BY customers.name ASC, orders.item ASC;


-- REPORT 2:
-- Name and city of customers who never ordered
-- Using LEFT JOIN and IS NULL
-- Sorted by name

SELECT
    customers.name,
    customers.city
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
WHERE orders.customer_id IS NULL
ORDER BY customers.name ASC;


-- REPORT 3:
-- ID, item and amount of orders with no customer
-- Using RIGHT JOIN and IS NULL
-- Sorted by amount

SELECT
    orders.id,
    orders.item,
    orders.amount
FROM customers
RIGHT JOIN orders
    ON customers.id = orders.customer_id
WHERE customers.id IS NULL
ORDER BY orders.amount ASC;


-- REPORT 4:
-- Every customer with their orders
-- Using LEFT JOIN
-- Sorted by name and then amount

SELECT
    customers.name,
    orders.item,
    orders.amount
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
ORDER BY customers.name ASC, orders.amount ASC;
