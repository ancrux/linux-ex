#!/bin/bash

yum localinstall collectd
yum localinstall collectd-python
# collectd configuration:FQDNLookup   false

# copy ./root/* to target machine
pip install -r /usr/share/collectd/docker/requirements.txt
# Note: must add TypesDB "/usr/share/collectd/types.db" with TypesDB "/usr/share/collectd/docker/dockerplugin.db" in collectd configuration
service collectd restart

