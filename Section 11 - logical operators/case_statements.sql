
-- classify the songs using case statements
SELECT title, released_year,
	CASE
		WHEN released_year >= 2000 THEN "Modern"
        ELSE "Old song"
	END
    AS "Genre"
FROM books;

-- classify the stocks
SELECT title, released_year,
	CASE
		WHEN stock_quantity < 50 THEN "*"
    WHEN stock_quantity BETWEEN 50 AND 100 THEN "**"
    ELSE "***"
	END
    AS "Stock rating"
FROM books;
