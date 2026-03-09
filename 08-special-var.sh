#!/bin/bash

echo "all variables passed :$@"
echo "number of variables: $#"
echo "script name $0"
echo "present working directory : $PWD"
echo "which runner using the script : $USER"
echo "process of the script : $$"
sleep 60 &
echo "last command process : $!"
