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
