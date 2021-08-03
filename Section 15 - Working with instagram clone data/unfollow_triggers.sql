-- Triggers can be used for logging the data as well 
-- like for example in instagram database 
-- we can create a table of unfollowers, where we will log 
-- all the events of users unfollowing other users

-- CREATE TABLE unfollows (
-- 	follower_id INT NOT NULL,
--     followee_id INT NOT NULL
-- );


DELIMITER $$ 
	CREATE TRIGGER log_unfollow_events
    AFTER DELETE ON follows FOR EACH ROW
    BEGIN
		INSERT INTO unfollows 
        SET
			follower_id = OLD.follower_id,
            followee_id = OLD.followee_id;
	END;
$$

DELIMITER ;

