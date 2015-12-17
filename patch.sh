#!/bin/bash

# generate diff for patch
diff /tmp/t1/a.txt /tmp/t2/b.txt > patch.diff
patch -p0 < patch.diff

# patch -p
# -p0 patching file with full path (e.g. /tmp/t1/a.txt => /tmp/t1/a.txt)
# -p1 take one slash out (e.g. /tmp/t1/a.txt => tmp/t1/a.txt)
# -p2 take two slashes out (e.g. /tmp/t1/a.txt => t1/a.txt)

