/*
DATE FORMATTING 
DAY()
DAYNAME()
DAYOFWEEK()
DAYOFYEAR()

TIME FORMATING 
HOUR(),
MINUTE()
SECOND()

date format in mysql

https://www.w3schools.com/sql/func_mysql_date_format.asp
*/

SELECT 
	name, 
    birth_dt, 
    DAY(birth_dt) AS DAY,
    DAYNAME(birth_dt) AS "DAY NAME",
    DAYOFWEEK(birth_dt) AS "DAY OF WEEK",
    DAYOFYEAR(birth_dt) AS "DAY OF YEAR",
    HOUR(birth_dt) AS "HOUR",
    MINUTE(birth_dt) AS "MINUTE",
    SECOND(birth_dt) AS "SECOND",
    DATE_FORMAT(birth_dt, "%M %D %Y, %W") AS "FORMAT1",
    DATE_FORMAT(birth_dt, "%m/%d/%Y at %H:%m") AS "FORMAT2",
    DATE_FORMAT(birth_dt, "%m/%d/%Y") AS "usa_date_format"
FROM people;