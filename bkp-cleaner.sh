#!/usr/bin/env bash

now=`/usr/bin/date +"%s"`

# to keep data for one week we multiply 86400 with 7 
days_to_keep=7
seconds_to_keep_data=$((86400*$days_to_keep))
seconds_goes=$(($seconds_to_keep_data - $now))

for file_name in *.gz
do
	file_birth=`/usr/bin/stat --format=%W $file_name`
	if [ $file_birth -lt $seconds_goes ]
	then	
		echo 'removing' $file_name
		/usr/bin/rm $file_name
	fi	
done


