#!/bin/bash

yum localinstall collectd
yum localinstall collectd-python

# copy ./root/* to target machine
service collectd restart

