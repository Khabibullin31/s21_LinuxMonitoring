#!/bin/bash
if [ $# != 4 ]
then
echo "Error: number of arguemetns should be 4, no more, no less"
exit 1
elif [[ $1 != [1-6] || $2 != [1-6] || $3 != [1-6] || $4 != [1-6] ]]
then
echo  "Error: arguments can take values from 1 to 6"
exit 1
elif [[ $1 == $2 || $3 == $4 ]]
then
echo  "Еrror: background and text colors cannot be the same"
exit 1
else
export background_color1=$1
export text_color1=$2
export background_color2=$3
export text_color2=$4
chmod 777 print.sh
./print.sh
fi