#!/bin/bash

# Looping through all the folders/files in the current path. Find every instance where a TODO comment has been left

# We use this instead of purely "." so that we can return the filename/line numbers in the output
directory=`pwd`

grep -rnH --include=*.py "TODO" $directory | awk -F " " '{ n = split($1,RES,"/"); OUT=RES[n-2]"/"RES[n-1]"/"RES[n]; for( i=2; i<=NF; i++) { OUT=OUT" "$i } print OUT;}'
