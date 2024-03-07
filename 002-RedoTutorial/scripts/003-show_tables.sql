-- to see all tables available for our database `tutorialdb`
SELECT * FROM information_schema.tables;

-- to see all tables we've created ourselves
SELECT * FROM information_schema.tables
WHERE table_schema = 'public' AND table_type = 'BASE TABLE';


