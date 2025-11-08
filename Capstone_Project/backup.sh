#!/bin/bash


SRC="$HOME/Documents"           # Source directory
DEST="$HOME/backup"             # Backup directory
DATE=$(date +%Y-%m-%d_%H-%M-%S) # Timestamp

mkdir -p "$DEST"                # Create backup folder safely
tar -czf "$DEST/backup_$DATE.tar.gz" "$SRC"

echo "✅ Backup completed successfully at $DATE."
echo "📁 Backup saved to: $DEST/backup_$DATE.tar.gz"
