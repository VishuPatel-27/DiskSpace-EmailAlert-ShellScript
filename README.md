# Disk Space Monitoring Script

A simple Bash script to monitor disk space usage on a Linux system and send an email alert if the disk space exceeds a specified threshold.

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Configuration](#configuration)
- [Installation](#installation)
- [Requirements](#requirements)
- [Alert Threshold](#alert-threshold)
- [Contributing](#contributing)
- [Acknowledgments](#acknowledgments)

## Introduction

This Bash script helps monitor the disk space utilization of a Linux system. It uses the `df` command to list disk partitions and `awk` and `tr` for string manipulation to extract the disk usage percentage. If the disk space exceeds a specified threshold, the script sends an email alert to notify the user.

## Usage

To use the disk space monitoring script, simply run the script in the terminal:

```bash
./disk_space_monitor.sh
```

## Configuration

Before running the script, make sure to configure the email address to receive alerts. Open the script in a text editor and locate the following line:

```bash
mail -s " DISK SPACE ALERT - ON SERVER" vjp2741.patidar@gmail.com
```

Replace `vjp2741.patidar@gmail.com` with your desired email address.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/disk-space-monitor.git
   ```

2. Navigate to the project directory:

   ```bash
   cd disk-space-monitor
   ```

3. Make the script executable:

   ```bash
   chmod +x disk_space_monitor.sh
   ```

4. Run the script:

   ```bash
   ./disk_space_monitor.sh
   ```
## Requirements

    Mail Command (mailutils package)
    Gmail SMTP Server
    Postfix Mail Server
    
## Alert Threshold

The script is set to trigger an alert if the disk space usage exceeds 75%. You can adjust this threshold according to your specific requirements by modifying the following line in the script:

```bash
if [[ $DISK_SPACE -ge 75 ]]
```

Change `75` to the desired percentage for triggering the alert.

## Contributing

Contributions are welcome! If you'd like to contribute to the project, please follow the [contribution guidelines](CONTRIBUTING.md).

## Acknowledgments

- The script utilizes common Linux commands for efficient disk space analysis.
