#!/bin/bash
#Replace USERNAME, PASSWORD and MYDB with the info from your environment
cd /var/db_backups
/usr/bin/mysqldump --opt -u USERNAME -pPASSWORD MYDB > $(date +%Y_%m_%d_%T_MYDB.sql)
find /var/db_backups -name "20*" -mtime +30 -exec rm -f {} \;
