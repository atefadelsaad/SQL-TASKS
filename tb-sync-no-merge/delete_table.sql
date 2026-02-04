/*
==========================
DELETE using IN
==========================
*/
DELETE g FROM gold.table_1 g
WHERE g.id not in
(SELECT s.id FROM silver.table_1 s)

/*
==========================
DELETE using NOT EXISTS
==========================
*/

DELETE g  FROM gold.table_1 g  WHERE NOT EXISTS 
(SELECT * FROM silver.table_1 s WHERE s.id = g.id )

/*
====================
DELETE using JOIN
====================
*/

DELETE g
FROM gold.table_1 g
LEFT JOIN silver.table_1 s
on s.id = g.id
WHERE g.id IS NULL;
