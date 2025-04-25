#!/bin/bash


<<info

This shell script will take periodic backups

info


src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src >/dev/null
aws s3 sync "$dest" s3://tws-backup-prd
echo "backup done and uploaded to s3"
