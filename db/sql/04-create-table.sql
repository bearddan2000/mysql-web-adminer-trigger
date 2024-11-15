DROP TABLE IF EXISTS `animal`.audit_table_name;

CREATE TABLE `animal`.audit_table_name (
	id INT PRIMARY KEY auto_increment,
	table_name varchar(20) NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;
