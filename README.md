# Bash Scripting

A growing collection of practical Bash scripts focused on automating everyday tasks, file operations, and system administration workflows.

## Scripts

| Script | Description |
|--------|-------------|
| [`check_service.sh`](check_service.sh) | Checks if a specified service (e.g., nginx) is running via `systemctl` and automatically attempts to restart it if it is inactive. |
| [`check_site.sh`](check_site.sh) | Sends an HTTP request to a configured URL and reports whether the website is up based on the returned status code. |
| [`create_backup.sh`](create_backup.sh) | Creates a timestamped backup copy of a specified source directory and saves it into a destination folder. |
| [`delete_replica.sh`](delete_replica.sh) | Compares two files and deletes the second one if they are identical, helping remove duplicate files. |
| [`dir_stats.sh`](dir_stats.sh) | Calculates and displays statistics for a given directory, including the total number of files, subdirectories, and overall disk usage size. |
| [`file_perm_check.sh`](file_perm_check.sh) | Checks whether a given file is readable, writable, and executable — useful for quick permission audits. |
| [`file_write_check.sh`](file_write_check.sh) | Validates if a file has write permissions before performing any operations on it. |

## Getting Started

```bash
# Clone the repository
git clone [https://github.com/ShownShaiju/bash-scripting.git](https://github.com/ShownShaiju/bash-scripting.git)
cd bash-scripting

# Make a script executable
chmod +x <script_name>.sh

# Run a script
./<script_name>.sh
