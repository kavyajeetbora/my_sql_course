DELIMITER $$
	CREATE TRIGGER insta_self_following
		BEFORE INSERT ON follows FOR EACH ROW
        BEGIN
			IF NEW.follower_id = NEW.followee_id THEN
				SIGNAL SQLSTATE '44000'
					SET MESSAGE_TEXT = "Users cannot follow themselves";
			END IF;
		END;
$$

DELIMITER ;