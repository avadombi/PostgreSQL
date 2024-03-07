-- select employees and their date of birth. Limit to 10
SELECT first_name, date_birth FROM employees LIMIT 10;

-- for each employee return his/her current age
-- use AGE clause: AGE(from_date, date_birth) = date_birth - from_date
SELECT
    first_name,
    EXTRACT(YEAR FROM AGE(NOW(), date_birth))
FROM employees
LIMIT 10;

-- for each employee return his/her date of birth + 5 Years
SELECT
    first_name,
    date_birth,
    date_birth + INTERVAL '5 YEAR' AS date_minus_5_years
FROM employees LIMIT 5;

-- for each employee return his/her date of birth + 5 Years
-- the addition convert DATE to TIMESTAMP, so cast the
-- TIMESTAMP (i.e., YYYY-MM-DD HH:MM:SS) to DATE (YYYY-MM-DD)
SELECT
    first_name,
    date_birth,
    (date_birth + INTERVAL '5 YEAR')::DATE AS date_minus_5_years
FROM employees LIMIT 5;


