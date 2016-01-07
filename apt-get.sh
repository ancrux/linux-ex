#!/bin/bash

# same as yum info, but also shows dependency
apt-cache show $package

# same as yum search
apt-cache search $package

# same as yum install
apt-get install -y $package

