#!/bin/bash

SERVICE="nginx"

# Check if service is running
if systemctl is-active --quiet $SERVICE
then
    echo "$SERVICE is running"
else
    echo "$SERVICE is NOT running. Restarting..."
    systemctl start $SERVICE

    # Verify restart
    if systemctl is-active --quiet $SERVICE
    then
        echo "$SERVICE restarted successfully"
    else
        echo "Failed to restart $SERVICE"
    fi
fi