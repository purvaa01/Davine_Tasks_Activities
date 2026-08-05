#!/bin/bash

#Create a script to automate file backups.

source="/mnt/d/DT_Tasks&Assignments/week3/"
destination="/mnt/d/DT_Tasks&Assignments/backup_dir"


mkdir -p "$destination"

cp -r "$source" "$destination"

echo "backup completed successfully."
