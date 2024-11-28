#!/bin/bash

# Direktori sumber dan tujuan
SOURCE_DIR="/path/to/source"
BACKUP_DIR="/path/to/backup"

# Membuat folder backup jika belum ada
if [ ! -d "$BACKUP_DIR" ]; then
 mkdir -p "$BACKUP_DIR"
 echo "Direktori backup dibuat: $BACKUP_DIR"
fi

# Copy file ke folder backup
cp -r "$SOURCE_DIR"/* "$BACKUP_DIR"
echo "Backup selesai: $BACKUP_DIR"