#!/bin/bash

disk_usage=$(df -h | tail -n +2 | awk '{print " " $6}' | sed 's/%//g' | head -n 1)

echo "$disk_usage"

if [ "$disk_usage" -ge 90 ]
then
    echo "ALERT: Disk usage is $disk_usage%. Storage is full. Take action!"
else
    echo "Disk usage is $disk_usage%. All good."
fi

