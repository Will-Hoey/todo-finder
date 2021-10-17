#!/bin/bash

# Looping through all the folders/files in the current path. Find every instance where a TODO comment has been left

# We use this instead of purely "." so that we can return the filename/line numbers in the output
directory=`pwd`

grep -rnH --include=*.py "TODO" $directory | awk -F " " '{ n = split($1,RES,"/"); OUT=RES[7]"/"RES[8]"/"RES[9]; for( i=2; i<=NF; i++) { OUT=OUT" "$i } print OUT;}'
