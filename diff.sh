#!/bin/bash

# diff two folders
diff -bur folder1/ folder2/

# diff two remote files
diff <(ssh myServer1 'cat foo') <(ssh myServer2 'cat foo') 

