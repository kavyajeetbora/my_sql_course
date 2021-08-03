SELECT 
	title,
	rating,
    CONCAT(
		first_name,
        " ",
        last_name
	) AS reviewer
FROM users INNER JOIN reviews
ON reviews.user_id = users.id
INNER JOIN series
ON series.id = reviews.series_id
ORDER BY title;