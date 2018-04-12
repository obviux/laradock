#!/bin/bash

sudo chown seluser /etc/hosts
getent hosts nginx | awk '{ print $1 "\tapp.dev.obviux.dk" }' >> /etc/hosts
sudo chown root /etc/hosts

/bin/bash /opt/bin/entry_point.sh
