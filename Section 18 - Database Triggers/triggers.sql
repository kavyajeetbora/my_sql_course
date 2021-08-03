-- CREATE TRIGGERS to restrict users less than 18 years

DELIMITER $$
	CREATE TRIGGER must_be_adult
    BEFORE INSERT ON users FOR EACH ROW
    BEGIN
		IF NEW.age < 18
        THEN
			SIGNAL SQLSTATE '44000'
				SET MESSAGE_TEXT="User must be an adult";
		END IF;
	END;
$$

DELIMITER ;

