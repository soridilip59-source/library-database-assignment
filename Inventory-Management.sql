
 
-- 1. Add two items in one INSERT
INSERT INTO items (id, item, category, price, stock)
VALUES
(15, 'Paratha', 'Meal', 40, 25),
(16, 'Thali', 'Meal', 90, 4);


-- 2. Raise the price of every Snack by 1
UPDATE items
SET price = price + 1
WHERE category = 'Snack';


-- 3. Record sales
-- Reduce Paratha stock by 5
UPDATE items
SET stock = stock - 5
WHERE item = 'Paratha';


-- Reduce Thali stock by 4
UPDATE items
SET stock = stock - 4
WHERE item = 'Thali';


-- 4. Check items whose stock is 0 before deleting
SELECT *
FROM items
WHERE stock = 0;


-- Delete every item whose stock is now 0
DELETE FROM items
WHERE stock = 0;


-- 5. Show all items sorted by category and item
SELECT item, category, price, stock
FROM items
ORDER BY category ASC, item ASC;
