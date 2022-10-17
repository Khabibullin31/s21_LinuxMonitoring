#!/bin/bash
if [ $# != 0 ]
then
echo "Error"
else
source color.conf
export background_color1=$column1_background
export text_color1=$column1_font_color
export background_color2=$column2_background
export text_color2=$column2_font_color
if [[ $background_color1 != [1-6] || $text_color1 != [1-6]  ||  $background_color2 != [1-6] || $text_color2 != [1-6] ]]
    then 
    background_color1=3
    text_color1=4
    background_color2=5
    text_color2=6
    export no_value_color=1
fi
chmod 777 print.sh
./print.sh
fi
