#!/bin/bash

# update time with NTP server
ntpdate 0.pool.ntp.org

# turn/convert unix timestamp to date string
date -d @1394097356

# set timezone to UTC
rm /etc/localtime

