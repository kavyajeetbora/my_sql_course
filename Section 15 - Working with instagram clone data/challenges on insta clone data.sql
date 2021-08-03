-- 1. find the 5 oldest users

SELECT
	username, 
    created_at,
	CONCAT(
		DATEDIFF(NOW(),created_at),
        " days"
	) AS duration
FROM users 
ORDER BY created_at LIMIT 5;

-- 2. What day of the week people register the most
SELECT
    DATE_FORMAT(created_at, "%W") AS week_day,
	COUNT(	
        username
	) AS users_count
FROM users 
GROUP BY week_day
ORDER BY users_count DESC; 

-- 3. Find the users who never posted a photo
SELECT username
FROM photos RIGHT JOIN users
ON photos.user_id = users.id
WHERE photos.id IS NULL;

-- 4. Find user with most liked photo
SELECT 
	users.username,
	image_url,
    COUNT(*) AS total_likes
FROM photos JOIN likes
ON photos.id = likes.photo_id
JOIN users 
ON users.id = photos.user_id
GROUP BY photos.id
ORDER BY total_likes DESC
LIMIT 1;

-- 4.1. Find all the users who have uploaded the most popular image
SELECT * FROM photos WHERE image_url='https://jarret.name';

-- 5. How many times does the average user post alias average number of post per user
SELECT 
	(SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users)
    AS "Average photos per user";
    
-- 6. Top 5 most popular hastags
SELECT 
	tags.tag_name,
	COUNT(*) as frequency
FROM photo_tags JOIN tags
ON photo_tags.tag_id = tags.id
GROUP BY tags.id
ORDER BY frequency DESC
LIMIT 6;

-- 7. Find users who have liked every single photo
-- SELECT * FROM users WHERE user.id is in 
SELECT 
	username,
	COUNT(user_id) AS total_liked
FROM likes JOIN users
ON likes.user_id = users.id
GROUP BY users.id
HAVING total_liked = (SELECT COUNT(*) FROM photos);