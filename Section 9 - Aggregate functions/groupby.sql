-- count the number of books per author
SELECT 
	CONCAT(
		author_fname, 
        " ",
        author_lname
	) AS "Author Name", 
    COUNT(*) 
    AS "Books count"
FROM books GROUP BY author_fname, author_lname;

-- count the number of books released on each year
SELECT 
	released_year,
    COUNT(*) AS "Books count"
FROM books GROUP BY released_year;

-- books count per year in a statement
SELECT 
	CONCAT(
		"The number of books released in the year ",
		released_year,
        " was ",
        COUNT(*)
	) AS "Books count"
FROM books GROUP BY released_year;