#!/bin/bash
# After Install Script
set -e
echo "Starting AfterInstall hook..."
# Set proper permissions
chown -R apache:apache /var/www/html/ 2>/dev/null || chown -R www-data:www-data /var/www/html/
find /var/www/html/ -type f -exec chmod 644 {} \;
find /var/www/html/ -type d -exec chmod 755 {} \;
echo "AfterInstall hook completed successfully"
