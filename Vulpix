#!/usr/bin/python
# -*- coding: utf-8

import MySQLdb
import string


# распаковка строки, в которой поля записаны с разделителем ";"
def unpack_line(line):
    line = string.replace(line, "'", "")
    els = string.split(line, ";")
    # выделяем имя, эмейл, адрес и телефон
    cus = els[0]
    code_pu = els[1]
    pu = els[2]
    email = els[3]
    tel = els[4]
    date_login_ak = els[5]
    date_last_login_ak = els[6]
    date_login_aml = els[7]
    date_login_am = els[8]
    date_last_login_aml = els[9]
    date_last_login_am = els[10]
    action = els[11]
    lite_full = els[12]
    ukd_chennel = els[13]
    action_date = els[14]
    action_execution_chennel = els[15]
    print 'Slenderman'
    return cus, code_pu, pu, email, tel, date_login_ak, date_last_login_ak, date_login_aml, date_login_am, \
           date_last_login_aml, date_last_login_am, action, lite_full, \
           ukd_chennel, action_date, action_execution_chennel


# подключаемся к базе данных
db = MySQLdb.connect(host="localhost", user="root", passwd="PASSWORD", db="Vulpix", charset='utf8')
# формируем курсор, с помощью которого можно исполнять SQL-запросы
cursor = db.cursor()

# открываем исходный csv-файл
f = open("Vulpix.csv", "r")
# представляем его в виде массива строк
lines = f.readlines()

for i, line in enumerate(lines):
    # извлекаем данные из строки
    if i == 0:
        continue

    cus, code_pu, pu, email, tel, date_login_ak, date_last_login_ak, date_login_aml, date_login_am, \
    date_last_login_aml, date_last_login_am, action, lite_full, ukd_chennel, \
    action_date, action_execution_chennel = unpack_line(line)
    # подставляем эти данные в SQL-запрос
    sql = """INSERT INTO Vulpix(cus, code_pu, pu, email, tel, date_login_ak,
    date_last_login_ak, date_login_aml, date_login_am, date_last_login_aml,
    date_last_login_am, action, lite_full, ukd_chennel, action_date,
    action_execution_chennel)
    VALUES ('%(cus)s', '%(code_pu)s', '%(pu)s', '%(email)s', '%(tel)s',
     '%(date_login_ak)s', '%(date_last_login_ak)s', '%(date_login_aml)s',
     '%(date_login_am)s', '%(date_last_login_aml)s', '%(date_last_login_am)s',
     '%(action)s', '%(lite_full)s', '%(ukd_chennel)s', '%(action_date)s',
     '%(action_execution_chennel)s')
    """ % {"cus": cus, "code_pu": code_pu, "pu": pu, "email": email, "tel": tel,
           "date_login_ak": date_login_ak, "date_last_login_ak": date_last_login_ak,
           "date_login_aml": date_login_aml, "date_login_am": date_login_am,
           "date_last_login_aml": date_last_login_aml, "date_last_login_am": date_last_login_am,
           "action": action, "lite_full": lite_full, "ukd_chennel": ukd_chennel,
           "action_date": action_date, "action_execution_chennel": action_execution_chennel}
    print("I'm here!")

    # исполняем SQL-запрос
    cursor.execute(sql)
    # применяем изменения к базе данных
    db.commit()

# закрываем соединение с базой данных
db.close()
# закрываем файл
f.close()
