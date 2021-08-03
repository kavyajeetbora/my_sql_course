-- find the first book of every author 
SELECT 
	CONCAT(
		author_fname,
        " ",
        author_lname
	) AS author,
    MIN(released_year) as "year"
FROM books GROUP BY author_fname, author_lname ORDER BY year; 
    
-- find the recent book of every author 
SELECT 
	CONCAT(
		author_fname,
        " ",
        author_lname
	) AS author,
    MAX(released_year) as "year"
FROM books GROUP BY author_fname, author_lname ORDER BY year; 

SELECT * FROM books;
-- find the longest book of every author 
SELECT 
	CONCAT(
		author_fname,
        " ",
        author_lname
	) AS author,
    MAX(pages) as "pages"
FROM books GROUP BY author_fname, author_lname ORDER BY pages DESC; 