DROP TRIGGER IF EXISTS `animal`.ins_dog_trigger;

delimiter //

CREATE TRIGGER `animal`.ins_dog_trigger AFTER INSERT ON `animal`.dog
  FOR EACH ROW
	BEGIN
		DECLARE action int;
		DECLARE tbl int;
    DECLARE usr varchar(100);
    DECLARE chg TIMESTAMP;
    DECLARE z varchar(255);

		SET @action = 1; -- INSERT
		SET @tbl = 1; -- DOG
    SET @usr = CURRENT_USER();
    SET @chg = CURRENT_TIMESTAMP();
    SET @z = CONCAT('breed: ', NEW.breed, ' color: ', NEW.color);

    CALL `animal`.sp_rolling_audit();

    INSERT INTO `animal`.audit (id, user, changed, actionId, tblId, new_val)
		VALUES (default, @usr, @chg, @action, @tbl, @z);
	END//
