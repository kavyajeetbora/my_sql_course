-- CREATE TABLE prices (
-- price_float FLOAT NOT NULL,
-- price_double DOUBLE NOT NULL
-- );

/*
FLOAT datatype can store numbers till 7 digits 
long accurately (including the digits after decimal point). 
Beyond that It limits the value

DOUBLE datatype can store numpers upto 15 digits including digits after decimal

more information:
https://www.w3schools.com/sql/sql_datatypes.asp
*/

-- INSERT INTO prices (price_float, price_double) VALUES (123.45,  1234567890.1234);
-- INSERT INTO prices (price_float, price_double) VALUES (12345.67, 1234567890.12345);
INSERT INTO prices (price_float, price_double) VALUES (123456.78, 1234567890.1234567);
SELECT * FROM prices;