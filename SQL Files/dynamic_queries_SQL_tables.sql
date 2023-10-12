CREATE TABLE `dynamic_queries` (
  `QID` int NOT NULL AUTO_INCREMENT,
  `QUERY_NAME` varchar(255) NOT NULL,
  `QUERY_DESC` text,
  `DB_System` varchar(50) DEFAULT NULL,
  `SCHEMA_NAME` varchar(50) DEFAULT NULL,
  `PARAMETERS` text,
  `Created_Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`QID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
select * from dynamic_queries;
alter table dynamic_queries  add column  propertiesFile varchar (255);