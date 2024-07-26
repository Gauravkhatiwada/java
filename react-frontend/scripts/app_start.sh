#!/bin/bash

# Enable debug mode for detailed logging
set -x

# Start the Node.js application with PM2
cd /home/ec2-user/server || { echo "Failed to change directory to /home/ec2-user/server"; exit 1; }
pm2 start server.js || { echo "Failed to start application with PM2"; exit 1; }

# Disable debug mode
set +x
