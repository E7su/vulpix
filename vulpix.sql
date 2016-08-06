-- active AK
SELECT COUNT(vul.CUS)
FROM
  (SELECT DISTINCT v.CUS
   FROM Vulpix AS v
   WHERE v.date_last_login_ak IS NOT NULL AND
         v.date_last_login_ak > STR_TO_DATE('2016-07-01', '%Y-%m-%d')) vul; -- todo

-- active AM
SELECT COUNT(vul.CUS)
FROM
  (SELECT DISTINCT v.CUS
   FROM Vulpix AS v
   WHERE v.date_last_login_ak IS NULL AND
         date_format(v.date_last_login_am, '%Y-%m-%d') > STR_TO_DATE('2016-07-01', '%Y-%m-%d')) vul;

-- АК -> АМ
SELECT
  COUNT(vul.CUS)                             AS QUANTITY,
  EXTRACT(MONTH FROM vul.date_last_login_ak) AS MONTH_LAST_LOGIN
FROM
  (SELECT DISTINCT
     v.CUS,
     v.date_last_login_ak
   FROM Vulpix AS v
   WHERE v.DATE_LAST_LOGIN_AK IS NOT NULL AND v.DATE_LAST_LOGIN_AM IS NOT NULL AND
         v.DATE_LAST_LOGIN_AM > STR_TO_DATE('2016-07-01', '%Y-%m-%d') AND
         v.DATE_LAST_LOGIN_AK <= v.DATE_LAST_LOGIN_AM) vul
GROUP BY MONTH_LAST_LOGIN

-- АМ -> АК
SELECT
  COUNT(vul.CUS)                             AS QUANTITY,
  EXTRACT(MONTH FROM vul.date_last_login_am) AS MONTH_LAST_LOGIN
FROM
  (SELECT DISTINCT
     v.CUS,
     v.date_last_login_am
   FROM Vulpix AS v
   WHERE v.DATE_LAST_LOGIN_AK IS NOT NULL AND v.DATE_LAST_LOGIN_AM IS NOT NULL AND
         v.DATE_LAST_LOGIN_AK > STR_TO_DATE('2016-07-01', '%Y-%m-%d') AND
         v.DATE_LAST_LOGIN_AK >= v.DATE_LAST_LOGIN_AM) vul
GROUP BY MONTH_LAST_LOGIN
