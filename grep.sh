#!/bin/bash

# search 'dbconfig' in all *.php under current folder 
grep -rn 'dbconfig' --include=*.php .

# another tools to replace 'grep -r' is 'ack'
yum install -y ack

# query log example
cat tmrm.api-2014-11-14.log | grep ":\-" | grep SCO_R  | awk '{print substr($1,1,14)}'  | sort | uniq -c

# exclude "string"
ls -l /etc | grep -v "sys"


