#!/bin/bash

# Directory to check (current folder)
DIR="."

echo "Checking directory: $DIR"
echo "-------------------------"

# Count files
FILE_COUNT=$(find $DIR -type f | wc -l)

# Count directories
DIR_COUNT=$(find $DIR -type d | wc -l)

# Disk usage
SIZE=$(du -sh $DIR | awk '{print $1}')

echo "Total files: $FILE_COUNT"
echo "Total directories: $DIR_COUNT"
echo "Total size: $SIZE"