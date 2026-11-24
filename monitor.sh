#!/usr/bin/env bash
process=$1
logfile="/var/process_log.log"

if [ -z "$process" ]
  then
    echo "Enter process name"
    exit 1
fi

if pgrep -f $process > /dev/null; then
  echo "Process $process is active"
else
  echo "$(date): Process $process is down" >> "$logfile"
fi

