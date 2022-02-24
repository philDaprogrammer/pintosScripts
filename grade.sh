#!/bin/bash 

# - run a grading script for a given project 
if [ -z "$projectDir" ]; then 
   echo -n "enter the directory to in which to build pintos: "
   read dir 
   echo "export projectDir="$dir"" >> $HOME/.bashrc # - set env variable   
   bash # - a new session must be started  
fi

cd $projectDir
make grade
cat  $projectDir/build/grade | head -n 71 
make clean 
