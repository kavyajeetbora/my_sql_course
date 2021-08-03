SELECT 10!=10;

SELECT 15>14 && 99-5 <=94;

SELECT 1 IN  (4,5) || 9 BETWEEN 8 AND 10;

-- SELECT ALL BOOKS BEFORE 1980
SELECT title FROM books WHERE released_year < 1980;

-- Select all books written by Eggers and Chabon
SELECT title, author_fname, author_lname FROM books WHERE author_lname = "Eggers" || author_lname="Chabon"; 

-- SELECT all BOOKS by Lahiri released after 2000
SELECT title, author_lname FROM books WHERE released_year > 2000 && author_lname="Lahiri";

-- Select all books with pages between 100 and 200
SELECT title, author_lname, pages FROM books WHERE pages BETWEEN 100 and 200;

-- Select all books where author name starts with C or S
SELECT title, author_lname FROM books WHERE author_lname LIKE "C%" || author_lname LIKE "S%";

-- Classifying the type of the book
SELECT 
	title,
    author_lname,
    CASE
		WHEN title LIKE "%Stories%" THEN "Short stories"
        WHEN title LIKE "%jUST KIDS%" || title LIKE "%A heartbreaking work%" THEN "Memoir"
        ELSE "Novel"
    END 
    AS  "Type"
FROM books;

-- count the number of books for each author
SELECT 
	CONCAT(
		author_fname,
        " ",
        author_lname
	) AS author_name,
    CONCAT(
		COUNT(*),
        CASE
			WHEN COUNT(*) > 1 THEN " books"
            ELSE " book"
        END 
	) AS book_count
FROM books GROUP BY author_fname, author_lname ORDER BY book_count DESC;