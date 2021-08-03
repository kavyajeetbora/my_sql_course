-- total number of pages in the database
SELECT SUM(pages) FROM books;

-- total number of pages written by each author
SELECT 
	CONCAT(
		author_fname, 
        " ",
        author_lname
	) AS author,
    SUM(pages) as "Total pages"
FROM books GROUP BY author_fname, author_lname;