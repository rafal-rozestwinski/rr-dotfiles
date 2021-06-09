#!/bin/bash -x
# This script will backup the postgresql database
# and store it in a specified directory

############################### INIT ####################################

# MAKE DIRECTORY:
mkdir -vp /var/lib/postgresql/backups
chown postgres:postgres /var/lib/postgresql/backups

# CRONTAB FOR ROOT:
#@daily sudo -u postgres pg-backup.sh >>/tmp/pgbackup.txt 2>&1
#@daily sudo -u postgres pg-backup.sh mattermost >>/tmp/pgbackup_mm.txt 2>&1

##########################################################################



echo "Starting..."
date
 
# PARAMETERS
# $1 database name (if none specified run pg_dumpall)
 
# CONSTANTS
# postgres home folder backups directory
# !! DO NOT specify trailing '/' as it is included below for readability !!
BACKUP_DIRECTORY="/var/lib/postgresql/backups"   #`eval echo ~postgres`/backups
echo "Going to dir $BACKUP_DIRECTORY"
cd $BACKUP_DIRECTORY ;
 
# Date stamp (formated YYYYMMDD)
# just used in file name
CURRENT_DATE=$(date -u +"%Y-%m-%dT%H-%M-%SZ")
echo "DATE IS $CURRENT_DATE"
# !!! Important pg_dump command does not export users/groups tables
# still need to maintain a pg_dumpall for full disaster recovery !!!
 
# this checks to see if the first command line argument is null
if [ -z "$1" ]
then
# No database specified, do a full backup using pg_dumpall
pg_dumpall | gzip - > $BACKUP_DIRECTORY/pg_dumpall_$CURRENT_DATE.sql.gz
ln -s pg_dumpall_$CURRENT_DATE.sql.gz latest.sql.gz

else
# Database named (command line argument) use pg_dump for targed backup
pg_dump $1 | gzip - > $BACKUP_DIRECTORY/$1_$CURRENT_DATE.sql.gz
ln -s $1_$CURRENT_DATE.sql.gz ${1}-latest.sql.gz
fi


date
ls -lah $BACKUP_DIRECTORY
echo "Completed."
echo "to restore: 'zcat pg_dumpall_20151231-1451516401.sql.gz | psql' "
echo " OR : 'zcat mm_20151231-1451516401.sql.gz | psql mm' "
echo " :) "
