-- create a sample table users

CREATE DATABASE triggers_demo;
use triggers_demo;

CREATE TABLE users (
	username VARCHAR(100),
    age INT
);

INSERT INTO users(username, age) VALUES("Akshay",30);
INSERT INTO users(username, age) VALUES("Rocky",23);
INSERT INTO users(username, age) VALUES("Brian",16);

SELECT * FROM users;