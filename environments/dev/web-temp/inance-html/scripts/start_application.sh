#!/bin/bash
# Application Start Script
set -e
echo "Starting ApplicationStart hook..."
systemctl start apache2
systemctl enable apache2
echo "ApplicationStart hook completed successfully"
