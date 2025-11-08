# 2241008020_SakibHussain

#!/bin/bash
# Automated Backup Script
SRC="$HOME/Documents"           # Source directory
DEST="$HOME/backup"             # Backup directory
DATE=$(date +%Y-%m-%d_%H-%M-%S) # Timestamp

mkdir -p "$DEST"                # Create backup folder safely
tar -czf "$DEST/backup_$DATE.tar.gz" "$SRC"

echo "✅ Backup completed successfully at $DATE."
echo "📁 Backup saved to: $DEST/backup_$DATE.tar.gz"
----------------------------------------------------------------------------------------

#!/bin/bash
# System Update and Cleanup 

echo "Simulating system update..."
sleep 1
echo "System updated successfully!"

echo "Simulating cleanup..."
sleep 1
echo "Temporary files cleaned up!"

echo "✅ Update and cleanup process completed (simulated)."

-------------------------------------------------------------------------------------------

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

---------------------------------------------------------------------------------------------
#!/bin/bash
# Maintenance Suite Menu

while true; do
    echo "=============================="
    echo "  System Maintenance Suite"
    echo "=============================="
    echo "1. Backup System"
    echo "2. Update & Cleanup"
    echo "3. Monitor Logs"
    echo "4. Exit"
    read -p "Choose an option: " choice

    case $choice in
        1) bash backup.sh ;;
        2) bash update_cleanup.sh ;;
        3) bash log_monitor.sh ;;
        4) echo "Exiting..."; break ;;
        *) echo "Invalid option, try again." ;;
    esac
done

----------------------------------------------------------------------------------------------------

#!/bin/bash
# Enhanced Maintenance Suite with Logging

LOG_FILE="/home/$USER/maintenance.log"

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

while true; do
    echo "=============================="
    echo "  System Maintenance Suite"
    echo "=============================="
    echo "1. Backup System"
    echo "2. Update & Cleanup"
    echo "3. Monitor Logs"
    echo "4. Exit"
    read -p "Choose an option: " choice

    case $choice in
        1) bash backup.sh && log "Backup completed" || log "Backup failed" ;;
        2) bash update_cleanup.sh && log "System updated" || log "Update failed" ;;
        3) bash log_monitor.sh && log "Log monitoring run" ;;
        4) log "Exited suite"; echo "Exiting..."; break ;;
        *) echo "Invalid option!"; log "Invalid menu selection" ;;
    esac
done
