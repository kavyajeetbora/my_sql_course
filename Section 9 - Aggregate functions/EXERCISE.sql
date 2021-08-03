-- print the number of books in the database
SELECT COUNT(*) FROM books;

-- Print out the number of books released each year
SELECT released_year, COUNT(*) FROM books GROUP BY released_year ORDER BY released_year;

-- Print out the total stocks of all the books
SELECT SUM(stock_quantity) from books;

-- find the average released year for each author
SELECT
	CONCAT(
		author_fname, 
        " ",
        author_lname
	) AS "author name",
    AVG(released_year) AS "average_year"
FROM books GROUP BY author_fname, author_lname ORDER BY average_year;

-- find the full name of the author who wrote the longest book
SELECT
	CONCAT(
		author_fname, 
        " ",
        author_lname
	) AS "author name",
    pages
FROM books ORDER BY pages DESC LIMIT 1;

-- Number of books and average pages each year
SELECT 
	released_year,
    COUNT(*) AS no_of_books,
    AVG(pages) AS avg_pages
FROM books GROUP BY released_year ORDER BY released_year DESC;

