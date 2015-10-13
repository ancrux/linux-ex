#!/bin/bash

# $0 $1 $2... command line arguments separated by spaces
# #0 is the filename
echo "\$0=${0}";

# $@ command arguments as string
echo "\$@=${@}";

# echo strings without new line
echo "aaa" "bbb" "ccc"
echo "ddd"
echo "eee"
