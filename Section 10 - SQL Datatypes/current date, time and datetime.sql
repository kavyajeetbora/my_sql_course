SELECT CURDATE(); -- gives the current date
SELECT CURTIME(); -- gives the current time
SELECT NOW(); -- gives the current datetime


-- insert a new record using the current datetime
INSERT INTO people 
(name, birth_date, birth_time, birth_dt)
VALUES
("Akshay", CURDATE(), CURTIME(), NOW());

SELECT * FROM people;