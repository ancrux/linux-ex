#!/bin/bash

# diff two folders
diff -bur folder1/ folder2/

# diff two folders but exclude a folder
diff --exclude=.git -bur /git-rf8/saas_ansible_deploy /git-rf5/saas_ansible_deploy
diff --exclude=.git* -bur /git-rf8/saas_ansible_deploy /git-rf5/saas_ansible_deploy # skip .gitignore, too

# diff two remote files
diff <(ssh myServer1 'cat foo') <(ssh myServer2 'cat foo') 

# colorize diff output
yum install -y colordiff
diff a.txt b.txt | colordiff

