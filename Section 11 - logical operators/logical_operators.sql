-- not equal operator
SELECT title, released_year FROM books WHERE released_year != 2017;

-- not like operator
SELECT title, released_year FROM books WHERE title NOT LIKE "%W%";

-- greater and greater than equal to operators
SELECT title, released_year FROM books WHERE released_year >= 2001 
ORDER BY released_year;

-- And operator
SELECT  
    title, 
    author_lname, 
    released_year FROM books
WHERE author_lname='Eggers' 
    AND released_year > 2010;

SELECT * FROM books
WHERE author_lname='Eggers' 
    AND released_year > 2010 
    AND title LIKE '%novel%';   
    
-- OR OPERATOR
SELECT 
    title, 
    author_lname, 
    released_year 
FROM books
WHERE author_lname='Eggers' || released_year > 2010;

-- between operator
SELECT title, author_fname, released_year FROM books WHERE released_year BETWEEN 2004 AND 2010;

-- between operator for dates
-- casting is recommended for performance
SELECT * FROM people WHERE birth_date BETWEEN CAST("1991-01-01" AS DATETIME) AND CAST("1993-01-01" AS DATETIME);


-- IN operator
SELECT title, author_lname, author_fname FROM books WHERE author_lname IN ("Carver", "Lahiri", "Smith");
SELECT * FROM people WHERE YEAR(birth_date) IN (1992,1993,1994);
SELECT * FROM books WHERE released_year NOT IN (2001,2003,2012);

-- FIND THE BOOKS released on even years:
SELECT title, released_year FROM books WHERE released_year % 2 = 0;

-- FIND THE BOOKS released on odd years:
SELECT title, released_year FROM books WHERE released_year % 2 != 0;


    