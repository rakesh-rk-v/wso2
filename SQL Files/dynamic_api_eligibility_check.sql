use eb;
create table eligibility_configs (id int primary key auto_increment not null ,scenario varchar(255) not null ,kyc_check char(1) not null,msisdn_validation char(1) not null,
mah_status char(1) not null,pending_reports char(1) not null,deposit char(1) not null,advance char(1) not null,barring char(1) not null , 
constraint y_or_n_check check (kyc_check in ('y','n') and msisdn_validation in ('y','n') and mah_status in ('y','n') and  pending_reports in ('y','n') and deposit in ('y','n') and advance in ('y','n') and barring  in ('y','n'))) ;
  
use eb;
DELIMITER //

CREATE TRIGGER lowercase_insert_eligibility_configs BEFORE INSERT ON eb.eligibility_configs
FOR EACH ROW
BEGIN
  SET NEW.scenario = LOWER(NEW.scenario);
  SET NEW.kyc_check = LOWER(NEW.kyc_check);
  SET NEW.msisdn_validation = LOWER(NEW.msisdn_validation);
  SET NEW.mah_status = LOWER(NEW.mah_status);
  SET NEW.pending_reports = LOWER(NEW.pending_reports);
  SET NEW.deposit = LOWER(NEW.deposit);
  SET NEW.advance = LOWER(NEW.advance);
  SET NEW.barring = LOWER(NEW.barring);
END //

DELIMITER ;
DELIMITER //
CREATE TRIGGER lowercase_update_eligibility_configs BEFORE update ON eb.eligibility_configs
FOR EACH ROW
BEGIN
  SET NEW.scenario = LOWER(NEW.scenario) ;
  SET NEW.kyc_check = LOWER(NEW.kyc_check);
  SET NEW.msisdn_validation = LOWER(NEW.msisdn_validation);
  SET NEW.mah_status = LOWER(NEW.mah_status);
  SET NEW.pending_reports = LOWER(NEW.pending_reports);
  SET NEW.deposit = LOWER(NEW.deposit);
  SET NEW.advance = LOWER(NEW.advance);
  SET NEW.barring = LOWER(NEW.barring);
END //

DELIMITER ;
commit;
select * from eb.eligibility_configs;
