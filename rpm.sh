#!/bin/bash

# list all scripts in installed RPMs
rpm -qa | xargs -i sh -c 'echo "=== {} ==="; rpm -q --scripts {};'

# list files in rpm & install scripts
rpm -qlp target.rpm
rpm -qlp --scripts target.rpm # show scripts as well
rpm -qp --scripts target.rpm # show scripts only

# list files & install scripts in INSTALLED rpm
rpm -ql openssl
rpm -ql --scripts httpd 
rpm -q --scripts httpd

# list dependency for rpm or INSTALLED rpm
rpm -qR openssl
rpm -qRp target.rpm

# query file/folder in which rpm
rpm -qf filename/folder

# remove local rpm with filter
rpm -e `rpm -qa | grep saas*`

rpm -qf /usr/sbin/httpd # 查檔案是屬於那個 package
rpm -ql httpd.rpm # 查 rpm 安裝的路徑

