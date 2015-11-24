#!/bin/bash

# update to the latest RPMs
yum -y update # right after ISO installation

# yumdownloader
yumdownloader <package> || yum install yum-downloadonly && yum update <package> -y --downloadonly --downloaddir=/opt

# search a package with filename
yum provides "*/scp"
yum provides httpd

# daemon for increasing yum performance
yum install yum-cron
service yum-cron restart

