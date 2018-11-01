#!/usr/bin/env bash

# Remove old website files
rm -r /var/www/html/*
# Copy files form usb to the Apache folder.
cp -a /media/pi/USB\ DISK/. /var/www/html/
# Fix broken permissions.
chgrp -R www-data /var/www/html
find /var/www/html -type d -exec chmod g+rx {} +
find /var/www/html -type f -exec chmod g+r {} +