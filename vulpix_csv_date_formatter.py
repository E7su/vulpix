#!/usr/bin/env python
# -*- coding: utf-8 -*-

import csv

print u"Hail Mary!"
print


def raichu(kalendar):
    for a in range(len(kalendar)):
        if kalendar != 'NULL':
            if kalendar[2] != ".":
                # time = kalendar[11:16]
                year = kalendar[:4]
                month = kalendar[5:7]
                day = kalendar[8:10]
                kalendar = day + "." + month + "." + year + " "  # + time
            elif kalendar[2] == ".":  # and len(kalendar) > 10:
                kalendar = kalendar[:10]
    return kalendar

input_file = open("Vulpix.csv", "rb")
rdr = csv.reader(input_file)
output_file = open("Vulpix_2.csv", "wb")
wrtr = csv.writer(output_file)
pikachu = 0
for rec in rdr:
    # print rec[0]
    try:
        row = rec[0].split(';')  # потому что это список

        row[6] = raichu(row[6])  # date_login_ak
        row[7] = raichu(row[7])  # date_last_login_ak
        row[8] = raichu(row[8])  # date_login_aml
        row[9] = raichu(row[9])  # date_login_am
        row[10] = raichu(row[10])  # date_last_login_aml
        row[11] = raichu(row[11])  # date_last_login_am

    except:
        print u"err", pikachu
        pass

    pikachu = pikachu + 1
    wrtr.writerow(row)
input_file.close()
output_file.close()
print u"pika-pika: ", pikachu
