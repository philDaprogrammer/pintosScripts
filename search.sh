#!/bin/bash 

##### 
# - since i am lazy, script to seach files in dir 
# - that contain a specific pattern 
# 
##### 


if [ -z $1 ]; then 
   echo "Please provide a pattern"
   exit -1 
fi 

for f in `ls`; do 
  match=$(cat $f | grep "$1")

  if [ ! -z "$match" ]; then
     echo "$f" 
     cat $f | grep --color -n "$1"
     echo 
  fi 
done 
