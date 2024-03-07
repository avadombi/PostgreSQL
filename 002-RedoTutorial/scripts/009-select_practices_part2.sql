-- for each employee, get info on his/her companies
-- step 1: select all employees
-- step 2: for each employee, link its company_id to the corresponding id in `companies` table
-- this will give a new table containing all employee info with their company info
-- for that, use INNER JOIN
SELECT * FROM employees AS e  -- alias for `employees` table
INNER JOIN companies As c  -- alias for `companies` table
ON e.company_id = c.id;

-- do the same as previous but return only employee's first_name, company name, and company country
-- limit results to 10
SELECT e.first_name, c.name, c.country
FROM employees AS e
INNER JOIN companies As c
ON e.company_id = c.id
LIMIT 10;


-- select companies with more than 2 employees
-- METHOD 1
-- step 1: select all employees
-- step 2: group by company_id
-- step 3: for each company_id, count the number of employees
-- step 4: retrieve company_id with more than 2 employees
-- step 5: select all `companies` where company_id matches
-- Step 6: limit to 10 records
SELECT *
FROM companies
WHERE id IN (
    SELECT company_id
    FROM employees
    -- with GROUP BY you need to have an aggregation method such as COUNT, MIN, MAX, AVG, ...
    -- either in after SELECT or after HAVING or both
    GROUP BY company_id
    HAVING COUNT(*) > 2
)
LIMIT 10;

-- METHOD 2
-- step 1: select all employees
-- step 2: join with `companies` table
-- step 3: group by company_id
-- step 4: for each company_id, count the number of employees
-- step 5: retrieve company_id with more than 2 employees
-- step 6: order by company name in ASC order
-- Step 7: limit to 10 records
SELECT e.company_id, c.name, c.country, COUNT(*) AS numb_employees
FROM employees e
JOIN companies c
ON e.company_id = c.id
-- each column in select you want to return must appear in the GROUP BY clause 
GROUP BY e.company_id, c.name, c.country
HAVING COUNT(*) > 2
ORDER BY c.name ASC
LIMIT 10;

-- select all employees, return only first_name and also
-- a new column named `status` = 'Updated' if first_name starts by 'Ma' and
-- 'Unknown' if not
SELECT
    first_name,
    CASE
        WHEN first_name LIKE 'Ma%' THEN 'Updated'
        ELSE 'Unknown'
    END AS status
FROM employees;





