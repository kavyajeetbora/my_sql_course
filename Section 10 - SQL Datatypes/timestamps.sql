/*
Timestamps ranges from 1970 to 2038 
whereas
datetime ranges from year 1000 to year 9999
and also timestamps consumes less data space than datetime, 
hence it is the preferred datatype for storing datetime information 
unless it is out of range specified above
*/

CREATE TABLE 
	comments (
		note VARCHAR(200),
        created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO comments (note) VALUES ("this is the second comment");
INSERT INTO comments (note) VALUES ("this is the third comment"); 

SELECT * FROM comments;

CREATE TABLE 
	comments2 (
		note VARCHAR(200),
        created_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
);

INSERT INTO comments2 (note) VALUES ("this is the second comment");
INSERT INTO comments2 (note) VALUES ("this is the third comment"); 

SET SQL_SAFE_UPDATES=0;
UPDATE comments2 SET note = "this is the modified comment" WHERE note="this is the third comment";
SET SQL_SAFE_UPDATES=1;
SELECT * FROM comments2;