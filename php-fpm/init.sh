#!/bin/sh

getent hosts nginx | awk '{ print $1 "\tapp.dev.obviux.dk" }' >> /etc/hosts

php-fpm
