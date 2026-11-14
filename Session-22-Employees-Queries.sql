 

-- 1. Everyone in HR
SELECT *
FROM employees
WHERE department = 'HR';


-- 2. Salary above 45000 in Sales or IT
SELECT *
FROM employees
WHERE salary > 45000
AND department IN ('Sales', 'IT');


-- 3. Names containing the letter 'e'
SELECT *
FROM employees
WHERE name LIKE '%e%';


-- 4. Salary from 36000 to 52000
-- Sorted from highest to lowest
SELECT *
FROM employees
WHERE salary BETWEEN 36000 AND 52000
ORDER BY salary DESC;


-- 5. The 4 lowest salaries
SELECT *
FROM employees
ORDER BY salary ASC
LIMIT 4;


-- 6. People not in Pune
-- Sorted by city, then name
SELECT *
FROM employees
WHERE city <> 'Pune'
ORDER BY city ASC, name ASC;
