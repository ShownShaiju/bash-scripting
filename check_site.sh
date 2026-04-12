#!/bin/bash

URL="https://google.com"

# Get HTTP status code
STATUS=$(curl -o /dev/null -s -w "%{http_code}" $URL)

echo "Checking $URL ..."
echo "Status code: $STATUS"

if [ "$STATUS" -eq 200 ]; then
    echo "Website is UP ✅"
else
    echo "Website is DOWN ❌"
fi