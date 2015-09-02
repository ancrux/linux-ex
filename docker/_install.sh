#!/bin/bash

yum update -y
yum install -y http://ftp.riken.jp/Linux/fedora/epel/6/i386/epel-release-6-8.noarch.rpm
yum install -y docker-io
yum install -y openssh-clients
yum install -y docker-io # for CentOS 6.6, CentOS 7 use 'yum install -y docker' instead

chkconfig docker on
service docker start

# comment
: <<'EOD'
Add following lines to /etc/sysctl.conf
---
net.ipv4.ip_forward = 1
net.netfilter.nf_conntrack_max = 655350
net.netfilter.nf_conntrack_tcp_timeout_established = 1200
---

insecure-registry
add to /etc/sysconfig/docker
other_args="--insecure-registry=10.42.254.145:5000 --insecure-registry=172.16.21.141:5000"
service docker restart
EOD

