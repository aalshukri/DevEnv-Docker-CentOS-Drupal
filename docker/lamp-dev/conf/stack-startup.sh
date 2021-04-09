#!/bin/bash

mkdir -p /run/php-fpm

/usr/sbin/php-fpm --fpm-config /etc/php-fpm.conf

/usr/sbin/mysqld --user=root --daemonize

/usr/sbin/httpd -D FOREGROUND
