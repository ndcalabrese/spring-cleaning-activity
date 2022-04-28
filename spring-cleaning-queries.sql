/* First Step: create a new database */
CREATE DATABASE IF NOT EXISTS shirts_db;
USE shirts_db;

/* Second Step: create a new table */
CREATE TABLE shirts (
shirt_id int NOT NULL AUTO_INCREMENT,
article varchar(45),
color varchar(45),
shirt_size varchar(10),
last_worn int,
PRIMARY KEY (`shirt_id`)
);

/* Third Step: Populate the table with the following data */
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

/* 1 */
SELECT * FROM shirts;

/* 2 */
INSERT INTO shirts VALUES(null, 'polo shirt', 'purple', 'M', 50);

/* 3 */
SELECT article, color
FROM shirts;

/* 4 */
SELECT article, color, shirt_size, last_worn
FROM shirts
WHERE shirt_size = 'M';

/* 5 */
UPDATE shirts
SET shirt_size = 'L'
WHERE article = 'polo shirt';

/* 6 */
UPDATE shirts
SET last_worn = 0
WHERE last_worn = 15;

/* 7 */
UPDATE shirts
SET shirt_size = 'XS', color = 'off white'
WHERE color = 'white';

/* 8 */
DELETE FROM shirts
WHERE last_worn = 200;

/* 9 */
DELETE FROM shirts
WHERE article = 'tank top';

/* 10 */
DELETE FROM shirts;

/* 11 */
DROP TABLE shirts;

/* TURN SAFE UPDATES BACK ON */
SET SQL_SAFE_UPDATES=1;