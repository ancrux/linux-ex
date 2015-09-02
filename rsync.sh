#!/bin/bash

# rsync -av -e ssh $SOURCE $TARGET
rsync -av -e ssh /root 172.16.33.33:/root

# more examples:
rsync -av -e ssh sco-ap01s.sjc1:/var/log/saas/common/appengine.log .
rsync -av -e ssh sco-ap01s.sjc1:/var/log/saas/common/appengine.log sco-ap01s.log

# rsync with deleting extra files and exclude unwanted files
rsync -av --delete --exclude='*/repo/*' --exclude='*/backup_etc/*' /tmp/saas angusl@tmscp-ps-mgnt01.sjc1:~
rsync -av --delete --exclude='*/repo/*' --exclude='*/backup_etc/*' angusl@sco-dply01b.sjdc:/opt/trendmicro/saas /opt/trendmicro

