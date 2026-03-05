#!/bin/sh
while true
do
  echo "[scheduler] simulated backup at $(date -u)"
  sleep ${BACKUP_INTERVAL_SECONDS:-300}
done
