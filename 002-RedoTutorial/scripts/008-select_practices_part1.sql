-- select all records in `companies` table
SELECT * FROM companies;

-- select the first 5 elements
-- 1. First method
SELECT * FROM companies LIMIT 5;

-- 2. Second method
SELECT * FROM companies FETCH FIRST 5 ROW ONLY;

-- select all records in `companies`, order by country name in DESC order
-- and return the first 5 rows
SELECT * FROM companies
ORDER BY country DESC
LIMIT 5;

-- skip the first 4 records and from the 5th record, select the next 5 records
SELECT * FROM companies OFFSET 4 LIMIT 5;

-- select the first 5 countries in `companies` table
SELECT country FROM companies LIMIT 5;

-- select all countries in `companies` table
-- then return only one instance of each country
-- and limit the returned records to 5
-- use distinct clause for that
SELECT DISTINCT(country) FROM companies LIMIT 5;

-- select distinct companies in `companies` table
-- and limit the returned records to 5
SELECT DISTINCT * FROM companies LIMIT 5;

-- select companies located in Canada
SELECT * FROM companies WHERE country = 'Canada';
SELECT * FROM companies WHERE country LIKE 'Canada';
SELECT * FROM companies WHERE country = 'canada';  -- return nothing because case-sensitive
SELECT * FROM companies WHERE country ILIKE 'canada';  -- works because ILIKE is case-insentive

-- select companies located in Canada with name starting from `Ro`
SELECT * FROM companies
WHERE country = 'Canada' AND name LIKE 'Ro%';  -- Ro followed by any sequence of characters (=> %)

-- select companies located in Canada with name starting from `Ro` or companies from 'Nigeria'
SELECT * FROM companies
WHERE (country = 'Canada' AND name LIKE 'Ro%') OR (country = 'Nigeria');

-- select companies located in Nigeria, Canada, France, China
SELECT * FROM companies
WHERE country IN ('Nigeria', 'France', 'Canada', 'China');

-- count number of companies by country and order by country name in ASC order
-- step 1: select all companies
-- step 2: group companies by country name
-- step 3: for each group (country name), count the number of companies
-- step 4: return country name and number of companies associated
SELECT country AS country_name, COUNT(*) AS num_companies FROM companies
GROUP BY country
ORDER BY country_name ASC;

-- count number of companies by country and order by number of companies in DESC order
SELECT country AS country_name, COUNT(*) AS num_companies FROM companies
GROUP BY country
ORDER BY num_companies DESC;

-- select the first company found in `companies` table for each
-- of the following countries: Nigeria, Canada, France, China
-- order by country name in DESC order
-- step 1: select all companies
-- step 3: group by country name
-- step 3: retrieve only the following groups: Nigeria, Canada, France, China
-- step 4: retrieve the minimum index for each group
-- step 5: select companies where id = min_id
SELECT * FROM companies
WHERE id IN (
    SELECT MIN(id) FROM companies
    GROUP BY country
    HAVING country IN ('Nigeria', 'France', 'Canada', 'China')  -- After GROUP BY, WHERE clause cannot be use, use HAVING instead
)
ORDER BY country DESC;

-- select countries with more than 70 `companies` and order by number of companies in DESC order
-- step 1: select all companies
-- step 3: group by country name
-- step 3: count number of companies by country
-- step 4: retrieve countries with number of companies > 50
-- step 5: order by number of companies in DESC order
SELECT country, COUNT(*) AS num_companies FROM companies
GROUP BY country
-- you can't use `num_companies` because the output is not yet generated
HAVING COUNT(*) > 70
-- Here the output is generated, we can use num_companies if necessary
ORDER BY num_companies DESC;
