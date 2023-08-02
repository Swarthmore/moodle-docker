#!/bin/bash

echo "Installing poppler-utils..."
apt update && apt install -y poppler-utils

echo "Installing python3..."
apt install -y python3

echo "Installing nodejs..."
curl -sL https://deb.nodesource.com/setup_16.x | bash - &&\
apt update && apt install -y nodejs

echo "Installing Moodle..."
LANG=en
ADMINUSER=admin
ADMINPASS=admin
ADMINEMAIL=moodle@example.com
FULLNAME=Moodle
SHORTNAME=Moodle
SUMMARY=Moodle
SUPPORTEMAIL=moodle@example.com

/usr/local/bin/php /var/www/html/admin/cli/install_database.php \
  --lang=$LANG \
  --adminuser=$ADMINUSER \
  --adminpass=$ADMINPASS \
  --adminemail=$ADMINEMAIL \
  --supportemail=$SUPPORTEMAIL \
  --fullname=$FULLNAME \
  --shortname=$SHORTNAME \
  --summary=$SUMMARY \
  --agree-license
