#!/bin/bash

# Source and destination
SOURCE="/home/user/myproject"
DEST="/home/user/backups"

# Create timestamp
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# Backup folder name
BACKUP_NAME="backup_$DATE"

# Create backup
mkdir -p $DEST/$BACKUP_NAME
cp -r $SOURCE/* $DEST/$BACKUP_NAME/

echo "Backup completed: $DEST/$BACKUP_NAME"