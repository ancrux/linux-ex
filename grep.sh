#!/bin/bash

# search 'dbconfig' in all *.php under current folder 
grep -rn 'dbconfig' --include=*.php .

# query log example
cat tmrm.api-2014-11-14.log | grep ":\-" | grep SCO_R  | awk '{print substr($1,1,14)}'  | sort | uniq -c

