#!/bin/bash

# Enable debug mode for detailed logging
set -x

# Change Working Directory
cd /home/ec2-user/server || { echo "Failed to change directory to /home/ec2-user/server"; exit 1; }

# Update & Set Node Version
curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash - || { echo "Failed to set up NodeSource repository"; exit 1; }

# Download Node.js & NPM
sudo yum -y install nodejs npm || { echo "Failed to install Node.js and NPM"; exit 1; }

# Download PM2
sudo npm install pm2@latest -g || { echo "Failed to install PM2"; exit 1; }

# Disable debug mode
set +x
