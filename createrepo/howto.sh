#!/bin/bash

# create repo metadata in repo folder
cd /opt/repo; createrepo .; # or createrepo /opt/repo

# if you change RPMs or forget to copy RPMs before createrepo, use --update to update repo metadata
cd /opt/repo; createrepo --update .; # or createrepo --update /opt/repo

# copy ./files/server/etc/httpd/conf.d/repo.conf to your server, then reload/restart httpd
service httpd reload; # or service httpd restart
