#!/bin/bash

proj_dir="/mnt/d/DT_Tasks&Assignments/week3/activity/Projects"
source_dir="/mnt/d/DT_Tasks&Assignments/week3/activity"
backup_dir="/mnt/d/DT_Tasks&Assignments/week3"
DATE=$(date + "%Y-%m-%d_%H-%M-%S")
echo "$DATE"

mkdir -p "$source_dir"
mkdir -p "$backup_dir"

echo "Proj directories created."

echo "<h2>Week 3 Activity</h2>" > "$source_dir/index.html"
echo "Sample README File." > "$source_dir/README.txt"

echo "proj files created."

echo "Copying project files."
sleep 4

cp -r "$source_dir" "$backup_dir/Proj_$DATE"

echo "Copied"

echo "Compressing backup"

tar -czf "$backup_dir/Project_backup_$DATE.tar.gz" \
"$backup_dir/Proj_$DATE"

echo "backup archived"


