/*
====================
UPDATE using JOIN
====================
*/
UPDATE g
SET
g.id = s.id  
FROM gold.table_1 g
JOIN silver.table_1 s 
ON g.id = s.id
WHERE g.name <> s.name;
