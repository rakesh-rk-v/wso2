
select * from uol_bscs.eligibility_config;
select * from uol_bscs.sub_api_master ;
-- delete from sub_api_master where api_id in (4,5,6);
-- Query For Filtering the Eligible Checking APIs
select * from sub_api_master where sub_api_id='customer_onboarding' 
and sub_api_id='eligibility_check'
or process_name in (
select case  when kycCheck=1 then 'kycCheck'  end  from sub_api_master sam,
eligibility_config ec where 
sam.sub_api_id='customer_onboarding' 
and process_name='eligibility_check'
and sam.sub_api_id=ec.sub_api_id
union
select case when msisdn=1 then 'msisdn' end  from sub_api_master sam,
eligibility_config ec where 
sam.sub_api_id='customer_onboarding' 
and process_name='eligibility_check'
and sam.sub_api_id=ec.sub_api_id
union
select case  when prgcheck=1 then 'prgcheck'   end  from sub_api_master sam,
eligibility_config ec where 
sam.sub_api_id='customer_onboarding' 
and process_name='eligibility_check'
and sam.sub_api_id=ec.sub_api_id
union
select  case when outstanding=1 then 'outstanding' end  from sub_api_master sam,
eligibility_config ec where 
sam.sub_api_id='customer_onboarding' 
and process_name='eligibility_check'
and sam.sub_api_id=ec.sub_api_id
union
select  case when connLimit=1 then 'connLimit'  end  from sub_api_master sam,
eligibility_config ec where 
sam.sub_api_id='customer_onboarding' 
and process_name='eligibility_check'
and sam.sub_api_id=ec.sub_api_id
union
select   case when tmcodeCheck=1 then 'tmcodeCheck'  end  from sub_api_master sam,
eligibility_config ec where 
sam.sub_api_id='customer_onboarding' 
and process_name='eligibility_check'
and sam.sub_api_id=ec.sub_api_id
union 
  select    case when reasonCheck=1 then 'reasonCheck' end  from sub_api_master sam,
eligibility_config ec where 
sam.sub_api_id='customer_onboarding' 
and process_name='eligibility_check'
and sam.sub_api_id=ec.sub_api_id
union
  select    case when contrStatus=1 then 'contrStatus' end  from sub_api_master sam,
eligibility_config ec where 
sam.sub_api_id='customer_onboarding' 
and process_name='eligibility_check'
and sam.sub_api_id=ec.sub_api_id
union
select      case when simStatus=1 then 'simStatus'   end  from sub_api_master sam,
eligibility_config ec where 
sam.sub_api_id='customer_onboarding' 
and process_name='eligibility_check'
and sam.sub_api_id=ec.sub_api_id
union
select case when MaHstatus=1 then 'MaHstatus'  end 
from sub_api_master sam,eligibility_config ec where 
sam.sub_api_id='customer_onboarding' 
and process_name='eligibility_check'
and sam.sub_api_id=ec.sub_api_id) order by process_id;