#!/bin/bash

#rsync -va --delete --exclude='*/repo/*' --exclude='*/backup_etc/*' /tmp/saas angusl@tmscp-ps-mgnt01.sjc1:~
rsync -va --delete --exclude='*/repo/*' --exclude='*/backup_etc/*' angusl@sco-dply01b.sjdc:/opt/trendmicro/saas /opt/trendmicro

