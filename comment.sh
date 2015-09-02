#!/bin/bash

# line comment

# block comment
: <<'EOD'
your block comment goes here
comment line 1
comment line 2
EOD

# equivalent: command > /dev/null
: `command`


