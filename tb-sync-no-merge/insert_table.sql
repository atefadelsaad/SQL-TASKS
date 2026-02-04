
/*
====================
INSERT using EXISTS
====================
*/
INSERT INTO gold.table_1(id,name)
SELECT * FROM silver.table_1 s  WHERE NOT EXISTS 
(SELECT 1 FROM gold.table_1 g WHERE s.id = g.id )


/*
====================
INSERT using IN
====================
*/
INSERT INTO gold.table_1(id,name)
SELECT * FROM silver.table_1 s
WHERE s.id not in
(SELECT g.id FROM gold.table_1 g WHERE s.id = g.id)


/*
====================
INSERT using JOIN
====================
*/
SELECT
S.id,
S.name
FROM silver.table_1 s
LEFT JOIN gold.table_1 g
on s.id = g.id
WHERE g.id IS NULL;
