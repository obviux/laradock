#!/bin/bash

getent hosts nginx | awk '{ print $1 "\tapp.dev.obviux.dk" }' >> /etc/hosts

nginx
