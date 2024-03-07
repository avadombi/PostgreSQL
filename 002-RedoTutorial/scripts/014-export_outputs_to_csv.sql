-- relative path not allowed for COPY to file
-- you should allow the right permissions
COPY (SELECT * FROM companies LIMIT 5) TO 'C:/Users/Adombi/Downloads/companies_test.csv' DELIMITER ',' CSV HEADER;

-- we going to do it with CMD
\COPY (SELECT * FROM companies LIMIT 5) TO 'C:/Users/Adombi/Downloads/companies_test.csv' DELIMITER ',' CSV HEADER;
