-- select companies
SELECT * FROM companies;

-- update company 'Photobug' by changing its country to 'India'
UPDATE companies SET country = 'India' WHERE name = 'Photobug';
SELECT * FROM companies WHERE name = 'Photobug';

