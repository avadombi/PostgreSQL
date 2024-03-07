-- select companies
SELECT * FROM companies;

-- insert a new company with id = 1
-- There will be a conflict on id because id should be unique (primary key)
-- INSERT INTO companies(id, name, country)
-- VALUES (1, 'Naruto inc.', 'Japan');

-- in that case, we have two options when there is a conflict
-- option 1: do nothing if there is a conflict when inserting data
INSERT INTO companies(id, name, country)
VALUES (1, 'Naruto inc.', 'Japan')
ON CONFLICT (id) DO NOTHING;

SELECT * FROM companies WHERE id = 1;

-- option 2: update the existing data if there is a conflict when inserting data
INSERT INTO companies(id, name, country)
VALUES (1, 'Naruto inc.', 'Japan')
ON CONFLICT (id) DO
UPDATE SET
    name = EXCLUDED.name,  -- means: replace the current name by the new one
    country = EXCLUDED.country
;

SELECT * FROM companies WHERE id = 1;
