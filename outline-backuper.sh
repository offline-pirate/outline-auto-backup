#!/usr/bin/env bash

echo 'creating backup..'
#save backup name in unix time format
#td=`date +"%s"`

#save backup name in human readble format
td=`date +"%Y-%d-%m"`

/usr/bin/tar -czf /home/outline/backups/$td.tar.gz	/opt/outline

if [ $? == 0 ]
then
	echo 'backup done :)'
else
	echo 'err: backup dident make it :('
