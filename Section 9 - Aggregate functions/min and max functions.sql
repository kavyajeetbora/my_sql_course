-- find the oldest year when a book was released
SELECT MIN(released_year) FROM books;

-- find the most recent year when a book was released
SELECT MAX(released_year) FROM books;

-- title of the longest book
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
-- alternate way using subqueries:
SELECT title, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);

-- title of the shortest book
SELECT title, pages FROM books ORDER BY pages LIMIT 1;
-- alternate way using subqueries:
SELECT title, pages FROM books WHERE pages = (SELECT MIN(pages) FROM books);

/*
note:
Subqueries are slower in processing the results compared to order by method
*/