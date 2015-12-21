#!/bin/bash

# redirect both stdout and stderr to file
ls xyz > xyz.log 2>&1

# using tee to write to stdout and file at the same time
ls xyz 2>&1 | tee xyz.log

