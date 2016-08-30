LOAD DATA INFILE '/var/lib/mysql-files/Vulpix_2.csv' INTO TABLE Vulpix.Vulpix_2 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
(cus,code_pu,pu,email,@pikachu,tel,@date_login_ak,@date_last_login_ak,@date_login_aml,
@date_login_am,@date_last_login_aml,@date_last_login_am,actions,lite_full, ukd_chennel,
@action_date,action_execution_chennel)
SET date_login_ak = STR_TO_DATE(@date_login_ak, '%d.%m.%Y'), 
date_last_login_ak = STR_TO_DATE(@date_last_login_ak, '%d.%m.%Y'), 
date_login_aml = STR_TO_DATE(@date_login_aml, '%d.%m.%Y'), 
date_login_am = STR_TO_DATE(@date_login_am, '%d.%m.%Y'), 
date_last_login_aml = STR_TO_DATE(@date_last_login_aml, '%d.%m.%Y'), 
date_last_login_am = STR_TO_DATE(@date_last_login_am, '%d.%m.%Y'),
action_date = STR_TO_DATE(@action_date, '%d.%m.%Y');
