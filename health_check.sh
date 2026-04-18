#!/bin/bash

LOG_FILE="health_log_$(date +%Y-%m-%d).log"

echo "===== SYSTEM HEALTH CHECK =====" >> $LOG_FILE
echo "Time: $(date)" >> $LOG_FILE
echo "--------------------------------" >> $LOG_FILE

# CPU Usage
echo "🔹 CPU Usage:" >> $LOG_FILE
top -bn1 | grep "Cpu(s)" >> $LOG_FILE

# Memory Usage
echo -e "\n🔹 Memory Usage:" >> $LOG_FILE
free -h >> $LOG_FILE

# Disk Usage
echo -e "\n🔹 Disk Usage:" >> $LOG_FILE
df -h >> $LOG_FILE

# Top 5 memory-consuming processes
echo -e "\n🔹 Top Processes (Memory):" >> $LOG_FILE
ps aux --sort=-%mem | head -n 6 >> $LOG_FILE

# Docker container status
echo -e "\n🔹 Docker Containers:" >> $LOG_FILE
docker ps -a >> $LOG_FILE 2>/dev/null || echo "Docker not installed" >> $LOG_FILE

# Disk alert 
echo -e "\n🔹 Disk Alert Check:" >> $LOG_FILE

THRESHOLD=80

df -h | awk 'NR>1 {print $5 " " $1}' | while read output;
do
    usage=$(echo $output | awk '{print $1}' | sed 's/%//g')
    partition=$(echo $output | awk '{print $2}')

    if [ $usage -ge $THRESHOLD ]; then
        echo "⚠️ ALERT: $partition is ${usage}% full!" >> $LOG_FILE
    fi
done

echo -e "\n-- END --\n" >> $LOG_FILE

echo "Health check complete. Log saved to $LOG_FILE"