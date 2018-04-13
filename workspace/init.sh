#!/bin/bash

# start chromedriver in the background
nohup chromedriver </dev/null >/dev/null 2>&1 &

/sbin/my_init
