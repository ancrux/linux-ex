#!/bin/bash

# update to the latest RPMs
yum -y update # right after ISO installation

# yumdownloader
yumdownloader <package> || yum install yum-downloadonly && yum update <package> -y --downloadonly --downloaddir=/opt


