LOAD DATA INFILE '/var/lib/mysql-files/Vulpix.csv' 
INTO TABLE Vulpix FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' 
(cus,code_mail,@pika,tel,@date_login_ak,@date_last_login_ak,@date_login_aml,
@date_login_am,@date_last_login_aml,@date_last_login_am,actions,lite_full,
ukd_chennel,@action_date,action_execution_chennel) 
SET date_login_ak = STR_TO_DATE(replace(@date_login_ak,'NULL',''), '%Y-%m-%d %H:%i:%s.%x'),
date_login_aml = STR_TO_DATE(replace(@date_login_aml,'NULL',''), '%Y-%m-%d %H:%i:%s.%x'),
date_login_am = STR_TO_DATE(replace(@date_login_am,'NULL',''), '%Y-%m-%d %H:%i:%s.%x'),
date_last_login_aml = STR_TO_DATE(replace(@date_last_login_aml,'NULL',''), '%Y-%m-%d %H:%i:%s.%x'),
date_last_login_am = STR_TO_DATE(replace(@date_last_login_am,'NULL',''), '%Y-%m-%d %H:%i:%s.%x'),
action_date = STR_TO_DATE(replace(@action_date,'NULL',''), '%Y-%m-%d %H:%i:%s.%x');
