-- 1. Create a database called shirts_db
-- CREATE DATABASE shirts_db;

-- 2. Create a table called shirts:
CREATE TABLE shirts (
	id INT NOT NULL  AUTO_INCREMENT PRIMARY KEY,
    article VARCHAR(255),
    color VARCHAR(25),
    shirt_size VARCHAR(4),
    last_worn INT
);

DESC shirts;
