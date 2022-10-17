#!/bin/bash
if [ $# != 0 ]
then
echo "Error"
else
chmod 777 print.sh
./print.sh
read -p "Do you want to write the output to a log file? (Y/N)" answer
if [[ $answer == Y || $answer == y ]]
then
name="$(date +"%d_%m_%y_%H_%M_%S").status"
./print.sh > $name
fi
fi
