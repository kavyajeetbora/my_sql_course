DROP DATABASE instagram_clone;
CREATE DATABASE instagram_clone;
use instagram_clone;

CREATE TABLE users(
	id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    date_created TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE likes(
    photo_id INT NOT NULL,
    user_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (photo_id) REFERENCES photos(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    PRIMARY KEY (photo_id, user_id)
);

CREATE TABLE comments(
	id INT AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(1000) NOT NULL,
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (photo_id) REFERENCES photos(id)
);

CREATE TABLE tags(
	id INT AUTO_INCREMENT PRIMARY KEY,
    tag VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photo_tags(
	photo_id INT NOT NULL,
    tag_id INT NOT NULL,
    FOREIGN KEY (photo_id) REFERENCES photos(id),
    FOREIGN KEY (tag_id) REFERENCES tags(id),
    PRIMARY KEY (photo_id, tag_id)
);

SHOW TABLES;

INSERT INTO users (username) 
VALUES
("KVBA"),
('akshay123'),
('rudra'),
('pranav'),
('nikunj'),
('arpita'),
('mayank');

SELECT * FROM users;

INSERT INTO photos (image_url, user_id)
VALUES
("apple.png", 1),
("mango.png", 2),
("pineapple.png", 1),
("rock.png", 5),
("flower.png", 4);

SELECT image_url, username, created_at 
FROM photos JOIN users
ON photos.user_id = users.id;

INSERT INTO likes (photo_id, user_id)
VALUES
(1, 1),
(2, 2),
(4, 1),
(5, 3),
(1, 4);

SELECT 
	likes.photo_id,
	image_url,
    users.username AS liked_by
FROM likes JOIN photos
ON likes.photo_id = photos.id
JOIN users
ON likes.user_id = users.id;


-- CREATE TABLE hash_tags(
-- 	id INT AUTO_INCREMENT PRIMARY KEY,
--     content VARCHAR(100)
-- );

CREATE TABLE followers(
    follower INT NOT NULL,
    folLowing_user INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (follower) REFERENCES users(id),
    FOREIGN KEY (following_user) REFERENCES users(id),
    PRIMARY KEY (follower, following_user)
);

INSERT INTO followers (follower, following_user)
VALUES
(1,2),
(2,1),
(3,4),
(5,1),
(1,4);

-- SELECT 
-- 	users.username,
--     created_at
-- FROM followers JOIN users
-- ON followers.follower = users.id
-- JOIN users ON 
-- followers.following_user = users.id;