#!/bin/bash

# search user in AD/LDAP with binding account (prompt password for binding account)
# Trend AD: ldap://10.28.1.212:3268 ldap://twdcadc01.tw.trendnet.org:3268 ldap://twdcadc04.tw.trendnet.org:3268
ldapsearch -x -D "CN=TMSCP PS,OU=Service Accounts,DC=tw,DC=trendnet,DC=org" \
           -W -H "ldap://10.28.1.212:3268" -b "DC=trendnet,DC=org" \
           -s sub 'sAMAccountName=angus_liu'

