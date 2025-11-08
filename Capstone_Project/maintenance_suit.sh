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
