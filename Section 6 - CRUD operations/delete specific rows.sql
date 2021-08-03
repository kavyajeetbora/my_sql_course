
-- delete all shirts last worn is 200
SET SQL_SAFE_UPDATES =0;
DELETE FROM shirts WHERE last_worn=200;
SET SQL_SAFE_UPDATES=1;
SELECT * FROM shirts;

-- delete all tank tops
SET SQL_SAFE_UPDATES = 0;
DELETE FROM shirts WHERE article="tank top";
SET SQL_SAFE_UPDATES = 1;
SELECT * FROM shirts;