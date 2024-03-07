-- SELECT * FROM companies LIMIT 5;
SELECT * FROM companies WHERE name LIKE 'Naruto%' OR name LIKE 'Spiderman%' OR name LIKE 'DBZ%';

-- Or
SELECT * FROM companies WHERE id IN (1001, 1002, 1003);

-- Or
SELECT * FROM companies WHERE id BETWEEN 1001 AND 1003;


