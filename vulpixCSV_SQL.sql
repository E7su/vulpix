LOAD DATA INFILE '/home/e7su/projects/vulpix/Vulpix.csv'
INTO TABLE Vulpix
FIELDS TERMINATED BY ';' ENCLOSED BY '"' ESCAPED BY '\\'
LINES TERMINATED BY '\n'
(cus,code_pu,pu,email,tel,@date_login_ak,@date_last_login_ak,@date_login_aml,
@date_login_am,@date_last_login_aml,@date_last_login_am,actions,lite_full,
ukd_chennel,@action_date,action_execution_chennel)
SET date_login_ak = STR_TO_DATE(@date_login_ak, '%Y-%m-%d'),
date_last_login_ak = STR_TO_DATE(@date_last_login_ak, '%Y-%m-%d'),
date_login_aml = STR_TO_DATE(@date_login_aml, '%Y-%m-%d'),
date_login_am = STR_TO_DATE(@date_login_am, '%Y-%m-%d'),
date_last_login_aml = STR_TO_DATE(@date_last_login_aml, '%Y-%m-%d'),
date_last_login_am = STR_TO_DATE(@date_last_login_am, '%Y-%m-%d'),
action_date = STR_TO_DATE(@action_date, '%Y-%m-%d');
