#!/bin/bash

# find files with size info
find . -name "*.rpm" -printf "%h/%f\t%s\n"

# find and exclude some files
find . -name "*.rpm" ! -name "*base*" # use ! before name, e.g. find all *.rpm but filter out "*base*"

# find and delete files
find /some/dir -type f -name "*.swp"  -delete # 移除 /some/dir 下所有 *.swp 的檔案

# find and execute command (use deleting file as example)
find /some/dir -name "*.egg-link" -exec rm -f {} \;

# find and show filesize
find . -name "*.png" | xargs -0 du -h # 顯示檔案大小

