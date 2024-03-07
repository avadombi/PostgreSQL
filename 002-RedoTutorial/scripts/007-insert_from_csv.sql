-- Insert from csv files
-- 1. companies table
COPY companies(id, name, country) FROM '../data/companies.csv' DELIMITER ',' CSV HEADER;

-- 2. employees table
COPY employees(id, first_name, last_name, email, gender, date_birth, company_id) FROM '../data/employees.csv' DELIMITER ',' CSV HEADER;

-- However, some authorizations are need for user 'postgres' to access /data directory
-- So, we will use CMD to insert our data instead

\COPY companies(id, name, country) FROM 'companies.csv' DELIMITER ',' CSV HEADER;
\COPY employees(id, first_name, last_name, email, gender, date_birth, company_id) FROM 'employees.csv' DELIMITER ',' CSV HEADER;
