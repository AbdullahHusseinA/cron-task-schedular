# Cron Task Scheduler

## Description
This project automates common administrative tasks on a Linux system by scheduling cron jobs for backups and log cleanup.

## Prerequisites
- A Linux environment (can be physical, VM, or WSL on Windows).
- Root or sudo privileges for executing scripts.

## Scripts
- `backup.sh`: Creates backups of important directories on the system.
- `log_cleanup.sh`: Deletes log files older than 7 days from `/var/log`.

## Setup and Configuration

1. Clone this repository to your server.
2. Ensure that you are running as root (for access to `/var/log`).
3. Add `log_cleanup.sh` and `backup.sh` to your crontab for automation (instructions below).

## Setup and Configuration

1. Clone this repository to your system:
   ```bash
   git clone https://github.com/<your-username>/cron-task-scheduler.git
   cd cron-task-scheduler

2. Ensure scripts are executable:
    ```bash
    chmod +x scripts/backup.sh scripts/log_cleanup.sh

3. Test the scripts
    ```bash
    sudo ./scripts/backup.sh
    sudo ./scripts/log_cleanup.sh

## How to Schedule Cron Jobs

To add the scripts to your cron scheduler, open crontab with the command:
```bash
sudo crontab -e

# Backup every Sunday at 2AM
0 2 * * 0 /path/to/backup.sh

# Log cleanup every Sunday at 3AM
0 3 * * 0 /path/to/log_cleanup.sh


##Contributing

Feel free to fork this repository, make improvements, and submit pull requests. Contributions are always welcome.

## License

This project follows the [MIT License](LICENSE).



