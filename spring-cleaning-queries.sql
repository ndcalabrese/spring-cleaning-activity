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