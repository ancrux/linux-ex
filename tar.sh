#!/bin/bash

# Task: List the contents of a tar file
tar -tvf file.tar

# Task: List the contents of a tar.gz file
tar -ztvf file.tar.gz

# Task: List the contents of a tar.bz2 file
tar -jtvf file.tar.bz2

# tar with multiple source
tar $option file.tar $source_dir1 $source_file2 $source_dir3

