#!/bin/bash

# xargs with multiple commands
ls *.rpm | xargs -I % sh -c "echo %; rpm -qlp %;" | more
ls *.txt | xargs -i sh -c 'echo {}; cat {}'
cat file.txt | xargs -i  sh -c 'command {} | command2 {} && command3 {}'

