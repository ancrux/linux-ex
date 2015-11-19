#!/bin/bash

# server-side:
# create repo metadata in repo folder
cd /opt/repo; createrepo .; # or createrepo /opt/repo

# if you change RPMs or forget to copy RPMs before createrepo, use --update to update repo metadata
cd /opt/repo; createrepo --update .; # or createrepo --update /opt/repo

# copy ./files/server/etc/httpd/conf.d/repo.conf to your server, then reload/restart httpd
service httpd reload; # or service httpd restart

# client-side:
# copy .files/client/etc/yum.repos.d/my.repo to your client, modify the baseurl
# test repo with command yum search
yum search my-rpm

# if you update repo metadata on server, please use yum clean to clean yum cache and try yum search again
yum clean all

