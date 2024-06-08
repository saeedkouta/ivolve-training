#!/bin/bash

# Set the threshold percentage 
THRESHOLD=35
# Email address to send the alert to
EMAIL="saeedkouta@gmail.com"
# Subject for the email alert
SUBJECT="Disk Usage Alert"
# Temporary file to store the disk usage report
TEMP_FILE="/tmp/lab2-script.txt"
# msmtp configuration
MSMTP="/usr/bin/msmtp"
MSMTP_CONFIG="$HOME/.msmtprc"

# Get the current disk usage
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read output;
do
  # Extract the usage percentage and the disk partition
  usage=$(echo $output | awk '{ print $1}' | sed 's/%//g')
  partition=$(echo $output | awk '{ print $2 }')
  
  # Check if the usage exceeds the threshold
  if [ $usage -ge $THRESHOLD ]; then
    echo "Running out of space \"$partition ($usage%)\" on $(hostname) as on $(date)" >> $TEMP_FILE
  fi
done

# Send an email if the threshold is exceeded
if [ -f $TEMP_FILE ]; then
  cat $TEMP_FILE | $MSMTP --debug -a default -t <<EOF
To: $EMAIL
Subject: $SUBJECT
$(cat $TEMP_FILE)
EOF
  rm $TEMP_FILE
fi

