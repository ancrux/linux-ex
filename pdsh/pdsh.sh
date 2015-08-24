#!/bin/bash

export PDSH_SSH_ARGS_APPEND="-q -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

# echo $@ # print command line arguments as a string
pdsh -b -w ^./hosts/my $@
