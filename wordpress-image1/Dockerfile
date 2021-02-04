FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y apache2 libapache2-mod-php php-mysql

RUN rm /var/www/html/index.html

copy wordpress /var/www/html

ENV DBHOST=mysql-master-service

ENV SLAVEHOST=mysql-service

ENV DBUSER=wpuser

ENV DBPASSWORD=password

ENV DBNAME=wpdb

copy entrypoint.sh /entrypoint.sh

RUN chmod 755 /entrypoint.sh

CMD /entrypoint.sh
