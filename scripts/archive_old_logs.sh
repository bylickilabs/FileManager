#!/bin/bash
# Move old log files to dated archive

DATE=$(date +%F)
mkdir -p archive/logs_$DATE
find logs -name "*.log" -mtime +30 -exec mv {} archive/logs_$DATE/ \;
echo "✅ Logs archived: archive/logs_$DATE/"
