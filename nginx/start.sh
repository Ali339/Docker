#!/bin/bash

echo "Starting php"
/usr/sbin/php-fpm

echo "Starting nginx"
nginx -g 'daemon off;'
