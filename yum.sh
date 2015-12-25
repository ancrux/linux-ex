#!/bin/bash

# update to the latest RPMs
yum -y update # right after ISO installation

# yumdownloader
yumdownloader <package> || yum install yum-downloadonly && yum update <package> -y --downloadonly --downloaddir=/opt

# search a package with filename
yum provides "*/scp"
yum provides httpd

# get dependencies of non-installed package
yum deplist php-silex # this will full list (maybe hundreds of dependencies)
# use repoquery from yum-utils
repoquery --requires php-silex # this only return requires in rpm.spec
repoquery --requires --resolve php-silex # this return names of rpm

# daemon for increasing yum performance
yum install yum-cron
service yum-cron restart

# command for increasing yum performance
yum makecache fast

