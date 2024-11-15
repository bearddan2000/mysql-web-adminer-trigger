DROP PROCEDURE IF EXISTS `animal`.sp_rolling_audit;

delimiter //

CREATE PROCEDURE `animal`.sp_rolling_audit()
  BEGIN
    DELETE FROM `animal`.audit
    WHERE MONTH(changed) > MONTH(CURRENT_TIMESTAMP());
  END//
