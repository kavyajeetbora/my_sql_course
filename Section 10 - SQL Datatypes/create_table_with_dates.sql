-- working with dates
CREATE TABLE people
(
name VARCHAR(100),
birth_date DATE,
birth_time TIME,
birth_dt DATETIME
);

INSERT INTO people (name, birth_date, birth_time, birth_dt) 
VALUES
("Kavya", "1992-03-20", "15:00:43",  "1992-03-20 15:00:43"),
("Dhruv", "1992-07-13", "19:10:53",  "1992-07-13 19:10:53"),
("Pranav", "1994-01-27", "00:00:12",  "1994-01-27 00:00:12"),
("Arpita", "1996-10-02", "20:30:00",  "1996-10-02 20:30:00");

SELECT * FROM people;