SELECT
	first_name,
    last_name,
    COUNT(rating) AS num_ratings,
    IFNULL(MIN(rating),0) AS min_rating,
    IFNULL(MAX(rating),0) AS max_rating,
	CASE
		WHEN COUNT(rating) > 0 THEN "Active"
        ELSE "Inactive"
	END AS user_status
FROM users LEFT JOIN reviews
ON users.id = reviews.user_id
GROUP BY users.id;