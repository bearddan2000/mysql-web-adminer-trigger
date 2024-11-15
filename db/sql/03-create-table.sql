DROP TABLE IF EXISTS `animal`.audit_action;

CREATE TABLE `animal`.audit_action (
	id INT PRIMARY KEY auto_increment,
	action varchar(20) NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;
