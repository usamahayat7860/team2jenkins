#!/bin/bash

mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
sed -i "s/database_name_here/${DBNAME}/g" /var/www/html/wp-config.php
sed -i "s/username_here/${DBUSER}/g" /var/www/html/wp-config.php
sed -i "s/password_here/${DBPASSWORD}/g" /var/www/html/wp-config.php
sed -i "s/localhost/${DBHOST}/g" /var/www/html/wp-config.php


apachectl -D FOREGROUND   #This command will start apache and stay it will never stop.
