# Cron Task Scheduler

## Description
This project automates common administrative tasks on a Linux system by scheduling cron jobs for backups and log cleanup.

## Scripts
- `backup.sh`: Creates backups of important directories on the system.
- `log_cleanup.sh`: Deletes log files older than 7 days from `/var/log`.

## Setup and Configuration

1. Clone this repository to your server.
2. Ensure that you are running as root (for access to `/var/log`).
3. Add `log_cleanup.sh` and `backup.sh` to your crontab for automation (instructions below).

## How to Schedule Cron Jobs

To add the scripts to your cron scheduler, open crontab with the command:
```bash
sudo crontab -e

# Backup every Sunday at 2AM
0 2 * * 0 /path/to/backup.sh

# Log cleanup every Sunday at 3AM
0 3 * * 0 /path/to/log_cleanup.sh


