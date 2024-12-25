#bin/bash

# Define variables

SOURCE_DIR="/etc"
DEST_DIR="/backups"
BACKUP_FILE="backup_$(date +%F_%H-%M-%S).tar.gz"

# Ensure the destination directory exists

mkdir -p "$DEST_DIR"


# Compress the files

echo "Starting backup of $SOURCE_DIR"

tar -czvf "$DEST_DIR/$BACKUP_FILE" "$SOURCE_DIR"

# Check if tar command was successful

if [ $? -eq 0 ]; then
	echo "Backup successful: $DEST_DIR/$BACKUP_FILE"
else
	echo "Backuo failed"
fi



