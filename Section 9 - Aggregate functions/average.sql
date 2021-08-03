-- average stock count in the database
SELECT AVG(stock_quantity) FROM books;
-- average page count in the database
SELECT AVG(pages) FROM books;

-- display average page count for every author
SELECT 
	CONCAT(
		author_fname, 
        " ",
        author_lname
	) AS "author",
    AVG(pages) AS "pages"
FROM books GROUP BY author_fname, author_lname ORDER BY pages DESC;

-- Average number of books released each year

SELECT released_year, COUNT(*) AS "number of books" FROM books 
GROUP BY released_year ORDER BY released_year DESC;