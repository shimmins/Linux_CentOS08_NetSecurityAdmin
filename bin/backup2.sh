#!/bin/bash

echo >> /var/log/backup.log
echo >> /var/log/backup.log

echo "===== Backup START : `date` ===========" >> /var/log/backup.log

/root/bin/backup.sh >/dev/null 2>>/var/log/backup.log
if [ $? -eq 0 ] ; then
	echo "[	OK	] Backup complete." >> /var/log/backup.log
else
	echo "[  FAIL ]" >> /var/log/backup.log
fi


echo "===== Backup STOP : `date` ===========" >> /var/log/backup.log
