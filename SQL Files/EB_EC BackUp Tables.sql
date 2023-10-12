-- File Location =  C:\Users\KNOT\Pictures\Doubts\BKP.sql
Create Schema IF NOT EXISTS eb_bkp_schema;
use eb_bkp_schema;
CREATE  TABLE IF NOT EXISTS RATE_PLANS_BKP  (ID INT PRIMARY KEY auto_increment,PLAN_NAME VARCHAR(20),PRICE INT,PLAN_CODE VARCHAR (20),
DEPOSIT INT, ACTIVE VARCHAR(20), PLAN_STATUS INT,
CONSTRAINT check_active CHECK(ACTIVE IN ('YES','NO')), CONSTRAINT check_planStatus CHECK (PLAN_STATUS IN (0,1)));

CREATE  TABLE IF NOT EXISTS RATE_PLANS_UPD  (UPDATE_SEQUENCE_ID INT primary KEY auto_increment,ID  INT,PLAN_NAME VARCHAR(20),PRICE INT,PLAN_CODE VARCHAR (20),
DEPOSIT INT, ACTIVE VARCHAR(20), PLAN_STATUS INT, UPDATED_TIME TIMESTAMP DEFAULT NOW(),
CONSTRAINT check_active_update CHECK(ACTIVE IN ('YES','NO')), CONSTRAINT check_planStatus_update CHECK (PLAN_STATUS IN (0,1)));

Create Schema IF NOT EXISTS eb_schema;
use eb_schema;
CREATE  TABLE IF NOT EXISTS RATE_PLANS  (ID INT PRIMARY KEY auto_increment,PLAN_NAME VARCHAR(20),PRICE INT,PLAN_CODE VARCHAR (20),
DEPOSIT INT, ACTIVE VARCHAR(20), PLAN_STATUS INT, 
CONSTRAINT check_active CHECK(ACTIVE IN ('YES','NO')), CONSTRAINT check_planStatus CHECK (PLAN_STATUS IN (0,1)));
DELIMITER  
CREATE TRIGGER if not exists  ins_trigger  AFTER INSERT ON RATE_PLANS FOR EACH ROW
BEGIN
INSERT INTO eb_bkp_schema.RATE_PLANS_BKP SELECT * FROM RATE_PLANS WHERE ID = NEW.ID;
END  //
DELIMITER ;
USE eb_schema;
INSERT IGNORE INTO `eb_schema`.`rate_plans` (`ID`, `PLAN_NAME`, `PRICE`, `PLAN_CODE`, `DEPOSIT`, `ACTIVE`, `PLAN_STATUS`) VALUES ('1', 'DASARA_BONANZA', '100', 'DAS10', '20', 'YES', '0');
 DELIMITER //
 CREATE TRIGGER  upd_trigger before UPDATE ON RATE_PLANS FOR EACH ROW 
 BEGIN 
 INSERT INTO eb_bkp_schema.RATE_PLANS_UPD (ID, PLAN_NAME, PRICE, PLAN_CODE, DEPOSIT, ACTIVE, PLAN_STATUS) SELECT * FROM RATE_PLANS WHERE ID = OLD.ID;
 END //
 DELIMITER ;
 
 /* -- Some of the SQL Statements useful while performing Operations.
DROP TRIGGER upd_trigger;
SELECT * FROM RATE_PLANS;
SELECT * FROM eb_bkp_schema.rate_plans_bkp;
SELECT * FROM eb_schema.rate_plans;
SELECT * FROM eb_bkp_schema.rate_plans_upd;
INSERT INTO `eb_bkp_schema`.`rate_plans_bkp` (`ID`, `PLAN_NAME`, `PRICE`, `PLAN_CODE`, `DEPOSIT`, `ACTIVE`, `PLAN_STATUS`) VALUES ('1', 'DASARA_BONANZA', '100', 'DAS10', '20', 'YES', '0');
USE eb_bkp_schema;
DELETE FROM eb_bkp_schema.rate_plans_bkp;
DELETE FROM eb_schema.rate_plans;
truncate eb_bkp_schema.rate_plans_upd;
*/


-- To Only get the Column Data Which are Updated Based on checking both BACKUP table Master Table Data

/*
use eb_bkp_schema;
SELECT
u.ID,
CASE WHEN o.PLAN_NAME <> u.PLAN_NAME THEN u.PLAN_NAME ELSE NULL END AS PLAN_NAME,
CASE WHEN o.PRICE <> u.PRICE THEN u.PRICE ELSE NULL END AS PRICE,
CASE WHEN o.PLAN_CODE <> u.PLAN_CODE THEN u.PLAN_CODE ELSE NULL END AS PLAN_CODE ,
CASE WHEN o.DEPOSIT <> u.DEPOSIT THEN u.DEPOSIT ELSE NULL END AS DEPOSIT,
CASE WHEN o.ACTIVE <> u.ACTIVE THEN u.ACTIVE ELSE NULL END AS ACTIVE,
CASE WHEN o.PLAN_STATUS <> u.PLAN_STATUS THEN u.PLAN_STATUS ELSE NULL END AS PLAN_STATUS,
u.UPDATED_TIME
FROM
eb_bkp_schema.RATE_PLANS_UPD u
JOIN
eb_schema.RATE_PLANS o ON u.ID = o.ID
WHERE
o.PLAN_NAME <> u.PLAN_NAME
OR o.PRICE <> u.PRICE
OR o.PLAN_CODE <> u.PLAN_CODE
OR o.DEPOSIT <> u.DEPOSIT
OR o.ACTIVE <> u.ACTIVE
OR o.PLAN_STATUS <> u.PLAN_STATUS;

	
	*/