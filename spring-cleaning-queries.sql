/* 
Create a new database
*/ 
CREATE DATABASE IF NOT EXISTS shirts_db;
USE shirts_db;

/*
Create new table and specify the column names and their data types.

Set shirt_id to increment automatically if no value is specified.

Set shirt_id as primary key.
*/
CREATE TABLE shirts (
shirt_id int NOT NULL AUTO_INCREMENT,
article varchar(45),
color varchar(45),
shirt_size varchar(10),
last_worn int,
PRIMARY KEY (`shirt_id`)
);

/* 
Populate the table with the provided data.
*/
INSERT INTO `shirts` VALUES 
(1,'t-shirt','white','S',10),
(2,'t-shirt','green','S',200),
(3,'polo shirt','black','M',10),
(4,'tank top','blue','S',50),
(5,'t-shirt','pink','S',0),
(6,'polo shirt','red','M',5),
(7,'tank top','white','S',200),
(8,'tank top','blue','M',15);

/* TURN SAFE UPDATES OFF */
SET SQL_SAFE_UPDATES=0;

-- 1 --------------------------------------------------------------------
/*
Get all data from the shirts table.
*/
SELECT * FROM shirts;

-- 2 --------------------------------------------------------------------
/*
Add a new shirt to the shirts table, using the provided info.
*/
INSERT INTO shirts VALUES(null, 'polo shirt', 'purple', 'M', 50);

-- 3 --------------------------------------------------------------------
/*
Select only the article and color columns of the table.
*/
SELECT article, color
FROM shirts;

-- 4 --------------------------------------------------------------------
/*
Select all columns except shirt_id, but only print rows where shirt_size
is 'M'.
*/
SELECT article, color, shirt_size, last_worn
FROM shirts
WHERE shirt_size = 'M';

-- 5 --------------------------------------------------------------------
/*
Update shirt_size to 'L' for all rows where article is 'polo shirt'.
*/
UPDATE shirts
SET shirt_size = 'L'
WHERE article = 'polo shirt';

-- 6 --------------------------------------------------------------------
/*
Update last_worn to 0 for all rows where last_worn is 15.
*/
UPDATE shirts
SET last_worn = 0
WHERE last_worn = 15;

-- 7 --------------------------------------------------------------------
/*
Update shirt_size to 'XS' and color to 'off white' for all rows where
color is 'white'.
*/
UPDATE shirts
SET shirt_size = 'XS', color = 'off white'
WHERE color = 'white';

-- 8 --------------------------------------------------------------------
/*
Delete rows where last_worn is 200.
*/
DELETE FROM shirts
WHERE last_worn = 200;

-- 9 --------------------------------------------------------------------
/*
Delete all rows where article is 'tank top'.
*/
DELETE FROM shirts
WHERE article = 'tank top';

-- 10 --------------------------------------------------------------------
/*
Delete all data from the shirts table.
*/
DELETE FROM shirts;

-- 11 --------------------------------------------------------------------
/*
Drop the shirts table from the database.
*/
DROP TABLE shirts;

/* TURN SAFE UPDATES BACK ON */
SET SQL_SAFE_UPDATES=1;