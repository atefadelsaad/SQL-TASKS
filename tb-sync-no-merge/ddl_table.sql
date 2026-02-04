IF OBJECT_ID('gold.table_1','U') IS NOT NULL
     DROP TABLE gold.table_1
CREATE TABLE gold.table_1(
id INT PRIMARY KEY NOT NULL,
name nvarchar(20) NOT NULL
)

IF OBJECT_ID('silver.table_1','U') IS NOT NULL
     DROP TABLE silver.table_1
CREATE TABLE silver.table_1(
id INT PRIMARY KEY NOT NULL ,
name nvarchar(20) NOT NULL,
)

