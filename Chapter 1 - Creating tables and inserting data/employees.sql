SELECT cat_id FROM cats;
SELECT name, breed FROM cats;
SELECT name, age FROM cats WHERE breed="Tabby";
SELECT cat_id, age FROM cats WHERE cat_id=age;

-- Aliases
SELECT name AS "Cat name", breed AS "Breed" FROM cats;

-- Updating
-- disable sql safe updates
SET SQL_SAFE_UPDATES=0;

-- Updating records from a table:

-- UPDATE cats SET breed = "Shorthair" WHERE breed = "Tabby";
-- UPDATE cats SET age = 15 WHERE name = "Misty";
-- UPDATE cats SET name="Jack" WHERE name="Jackson";
-- UPDATE cats SET breed="British Shorthair" WHERE name="Ringo";
-- UPDATE cats SET age=12 WHERE breed="Maine Coon";

-- deleting records from a table:

-- DELETE FROM cats WHERE name="Egg";
-- DELETE FROM cats WHERE age=4;
-- DELETE FROM cats WHERE age=cat_id;
-- DELETE FROM cats;

-- enable safe updates:
SET SQL_SAFE_UPDATES=1;
SELECT * FROM cats;