#!/bin/bash
# Validate Service Script
set -e
echo "Starting ValidateService hook..."
sleep 5
if systemctl is-active --quiet apache2; then
    echo "Apache2 is running successfully"
else
    echo "Apache2 is not running"
    exit 1
fi
echo "ValidateService hook completed successfully"
