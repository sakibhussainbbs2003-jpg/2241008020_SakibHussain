#!/bin/bash
# Log Monitoring Script

LOG_FILE="/var/log/syslog"
ALERT_KEYWORD="error"

echo "Monitoring $LOG_FILE for keyword: $ALERT_KEYWORD"

if grep -i "$ALERT_KEYWORD" "$LOG_FILE" > /dev/null
then
  echo "⚠️  Alert: '$ALERT_KEYWORD' found in system log!"
else
  echo "✅ No '$ALERT_KEYWORD' found in logs."
fi
