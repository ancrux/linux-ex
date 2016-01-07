#!/bin/bash

# update to the latest RPMs
yum -y update # right after ISO installation

# yumdownloader
yumdownloader <package> || yum install yum-downloadonly && yum update <package> -y --downloadonly --downloaddir=/opt

# yumdownloader along with dependencies
yumdownloader --resolve <package>

# install from local packages and dependencies
yum localinstall *.rpm

# An /etc/yum.conf with the appropriate URL's in the config file. This could point at http://localhost/SOFTWARE/ or file:///usr/local/SOFTWARE/
# in the SOFTWARE directory, you will need headers. What linux version are you running? For newer software, createrepo seems to be the key. I think the command "yum-arch ." builds the headers too.

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

