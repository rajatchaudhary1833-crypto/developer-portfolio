
#!/bin/bash

# Check whether source folder is provided
if [ -z "$1" ]; then
    echo "Error: Please provide a source folder."
    echo "Usage: ./backup.sh folder_path"
    exit 1
fi

SOURCE="$1"

# Check whether source folder exists
if [ ! -d "$SOURCE" ]; then
    echo "Error: Source folder does not exist."
    exit 1
fi

# Create backup directory
BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

# Generate timestamp
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

# Create backup file
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

tar -czf "$BACKUP_FILE" -C "$(dirname "$SOURCE")" "$(basename "$SOURCE")"

# Check backup status
if [ $? -eq 0 ]; then
    SIZE=$(du -h "$BACKUP_FILE" | cut -f1)

    echo "Backup created successfully!"
    echo "Backup File: $BACKUP_FILE"
    echo "Backup Size: $SIZE"

    echo "$(date): $BACKUP_FILE - $SIZE" >> "$BACKUP_DIR/backup.log"
else
    echo "Backup failed!"
    exit 1
fi
