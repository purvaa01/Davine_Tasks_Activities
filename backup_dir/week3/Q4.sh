#Q. Write a script to clean old log files. 
#!/bin/bash

find ~/logs -type f -mtime +7 -delete

echo "Old log files deleted"
