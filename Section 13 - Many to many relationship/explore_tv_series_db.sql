SHOW TABLES;

-- show titles and corresponding ratings of all users
SELECT title, rating FROM 
series JOIN reviews
ON series.id = reviews.series_id;

-- show average rating of each movie
SELECT 
	title, 
    AVG(rating) as avg_rating
FROM 
series JOIN reviews
ON series.id = reviews.series_id
GROUP BY series.id ORDER BY avg_rating;

-- show the every single rating given by each user
SELECT 
	first_name, 
    last_name,
    rating
FROM users JOIN reviews
ON users.id = reviews.user_id;

-- show the series which is not been reviewed by anyone
SELECT 
	title
FROM series LEFT JOIN reviews
ON series.id = reviews.series_id
WHERE rating is NULL;

-- average rating of each genre
SELECT
	genre,
	ROUND(
		AVG(rating),
        2
	) AS avg_rating
FROM series JOIN reviews
ON series.id = reviews.series_id
GROUP BY genre;