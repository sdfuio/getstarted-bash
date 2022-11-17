#!/bin/bash

# this is an example of egrep

full_fname="abcdefg4321.jpg"
echo "full filename is ${full_fname}"

ext=$(echo $full_fname | egrep [^\.]+$ -o) # jpg
echo "${ext} is the extension of ${full_fname}" 

fname=$(echo $full_fname | egrep ^[a-z]+[0-9]+ -o) # abcdefg4321
echo "extension ${ext} is removed -> ${fname} "
echo "this is equivalent to ${full_fname%%.${ext}}"

num=$(echo $fname | egrep [0-9]+$ -o) # 4321
echo "number is ${num}"



