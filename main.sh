#!/usr/bin/env bash
# this file will run just once to setup the auto backup

echo 'create direcory for outline'
mkdir /home/outline/backups

echo 'add backuper to cron.daily'
/usr/bin/ln -s `pwd`/outline-backuper.sh /etc/cron.daily

echo 'add pkp cleaner to cron.hourly'
/usr/bin/ln -s `pwd`/bkp-cleaner.sh /etc/cron.hourly

