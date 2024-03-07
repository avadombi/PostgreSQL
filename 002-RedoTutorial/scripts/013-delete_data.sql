-- first, let's insert
INSERT INTO companies(id, name, country)
VALUES (1001, 'Naruto inc.', 'Japan')
ON CONFLICT (id) DO NOTHING;

-- select the newly inserted data (check if insertion succeeded)
SELECT * FROM companies WHERE id = 1001;

-- then delete it
DELETE FROM companies WHERE id = 1001;

-- select the newly deleted data (check if deletion succeeded)
SELECT * FROM companies WHERE id = 1001;

-- Note: if you use `DELETE FROM companies;` it will delete all records



