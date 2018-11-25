#!/usr/bin/env bash

echo Removing old website files
rm -r /var/www/html/*
echo Finding name of usb.
usbfoldername=(`ls /media/pi/`)
echo Copying files form usb to the Apache folder.
cp -a /media/pi/$usbfoldername/. /var/www/html/
echo Fixing broken permissions.
chgrp -R www-data /var/www/html
find /var/www/html -type d -exec chmod g+rx {} +
find /var/www/html -type f -exec chmod g+r {} +