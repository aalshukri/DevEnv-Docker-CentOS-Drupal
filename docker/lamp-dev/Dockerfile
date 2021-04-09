##CentOS 7 Dev Image
FROM lamp-base:latest

#Label
LABEL version="0.1"

#Apache & PHP
RUN bash -c "cd /etc/ssl/certs/ ; openssl req -newkey rsa:4096 -nodes -keyout lamp-dev.key -x509 -days 1095 -out lamp-dev.crt -subj \"/C=UK/ST=London/L=London/O=OCTRU/OU=IT/CN=lamp-dev/emailAddress=dev@dev\""
COPY ./conf/apache_vhost.conf /etc/httpd/conf.d/default_site.conf
COPY ./conf/php-fpm_www.conf /etc/php-fpm.d/www.conf
RUN echo "<?php phpinfo();?>" > /var/www/html/info.php

#Copy startup script
COPY ./conf/stack-startup.sh /usr/bin/stack-startup.sh
RUN chmod +x /usr/bin/stack-startup.sh

#Initialize & reset MySQL password
RUN bash -c 'mysqld --initialize;mysqld --user=root --daemonize;password=$(grep -oP "temporary password(.*): \K(\S+)" /var/log/mysqld.log);mysqladmin --user=root --password="$password" password aaBB@@cc1122;mysql --user=root --password=aaBB@@cc1122 -e "UNINSTALL PLUGIN validate_password;";mysqladmin --user=root --password="aaBB@@cc1122" password "";mysqladmin -u root shutdown'


#Start stack
CMD ["/usr/bin/stack-startup.sh"]

