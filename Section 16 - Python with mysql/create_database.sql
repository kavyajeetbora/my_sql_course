CREATE DATABASE join_us;
use join_us;
CREATE TABLE users(
	email_id VARCHAR(100) PRIMARY KEY,
    created_at TIMESTAMP DEFAULT NOW()
);

show tables;