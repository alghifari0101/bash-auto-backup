Description:
This script is designed to perform backups of files and folders from a source directory to a destination directory. It adds a timestamp to the backup folder name and logs all backup activities in a log file.

Features :
Automated Backup: Copies all files from the source directory to the destination directory.
Timestamped Backup: Organizes backups into folders named by date and time.
Activity Logging: Records backup activities in a log file for tracking.
Efficient Syncing: Uses rsync to only update changed files.

Requirements:
Unix/Linux-based operating system.
Terminal and Bash shell access.
Additional tool: rsync.

How to Use:

1. Edit the Script
Open the backup_script.sh file.
Update the following paths as needed:

SOURCE_DIR="/path/to/source"    # Source directory
BACKUP_DIR="/path/to/backup"    # Destination directory
LOG_FILE="/path/to/backup.log"  # Log file

2. Make the Script Executable
Grant execution permission to the script:

chmod +x backup_script.sh

3. Run the Script
Run the script using:

./backup_script.sh

4. Check the Backup Result
The backup will be saved in the destination directory (BACKUP_DIR) under a subfolder named with the current date and time.

5. View the Log File
To view the backup log:

cat /path/to/backup.log

