DROP TABLE IF EXISTS `animal`.audit;

CREATE TABLE `animal`.audit (
	id INT PRIMARY KEY auto_increment,
	user varchar(100) NOT NULL,
	changed TIMESTAMP NULL,
	actionId INT NOT NULL,
	tblId INT NOT NULL,
	old_val varchar(255) DEFAULT NULL,
	new_val varchar(255) DEFAULT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;
