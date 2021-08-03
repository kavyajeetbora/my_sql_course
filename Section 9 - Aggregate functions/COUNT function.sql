use books_db;
SELECT COUNT(*) FROM books;

-- find the number of unique first name
SELECT COUNT(DISTINCT author_fname) FROM books;

-- find the number of unique last name
SELECT COUNT(DISTINCT author_lname) FROM books;

-- find the count of unqiue authors
SELECT COUNT(DISTINCT author_fname, author_lname) FROM books;