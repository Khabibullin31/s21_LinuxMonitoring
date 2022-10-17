#!/bin/bash
re='^[+-]?[0-9]+([.][0-9]+)?$'
if [ $# = 0 ] 
then
echo "Not enough arguments. Please pass a name as an argument"
elif [[ $1 =~ $re ]] 
then
echo "Entered number"
elif [ $# != 1 ]
then
echo "Error: too many arguements"
else
echo $1
fi