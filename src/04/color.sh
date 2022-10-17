#!/bin/bash

mass[0]=$background_color1;
mass[1]=$text_color1;
mass[2]=$background_color2;
mass[3]=$text_color2;

white_background="\033[107m"
red_background="\033[101m"
green_background="\033[102m"
blue_background="\033[104m"
purple_background="\033[105m"
black_background="\033[40m"

white_text="\033[97m"
red_text="\033[91m"
green_text="\033[92m"
blue_text="\033[94m"
purple_text="\033[95m"
black_text="\033[30m"

end="\033[0m"

for i in 0 2
do
if [[ ${mass[$i]} == 1 ]]
    then
    r_mass[$i]=$white_background
elif [[ ${mass[$i]} == 2 ]]
    then
    r_mass[$i]=$red_background
elif [[ ${mass[$i]} == 3 ]]
    then
    r_mass[$i]=$green_background
elif [[ ${mass[$i]} == 4 ]]
    then
    r_mass[$i]=$blue_background
elif [[ ${mass[$i]} == 5 ]]
    then
    r_mass[$i]=$purple_background
elif [[ ${mass[$i]} == 6 ]]
    then
    r_mass[$i]=$black_background
fi
done

for i in 1 3
do
if [[ ${mass[$i]} == 1 ]]
    then
    r_mass[$i]=$white_text
elif [[ ${mass[$i]} == 2 ]]
    then
    r_mass[$i]=$red_text
elif [[ ${mass[$i]} == 3 ]]
    then
    r_mass[$i]=$green_text
elif [[ ${mass[$i]} == 4 ]]
    then
    r_mass[$i]=$blue_text
elif [[ ${mass[$i]} == 5 ]]
    then
    r_mass[$i]=$purple_text
elif [[ ${mass[$i]} == 6 ]]
    then
    r_mass[$i]=$black_text
fi
done

for i in 0 1 2 3
do
if [[ ${mass[$i]} == 1 ]]
    then
    color[$i]="white"
elif [[ ${mass[$i]} == 2 ]]
    then
    color[$i]="(red)"
elif [[ ${mass[$i]} == 3 ]]
    then
    color[$i] = "(green)"
elif [[ ${mass[$i]} == 4 ]]
    then
    color[$i]="(blue)"
elif [[ ${mass[$i]} == 5 ]]
    then
    color[$i]="(purple)"
elif [[ ${mass[$i]} == 6 ]]
    then
    color[$i]="(black)"
fi
done

echo -e "${r_mass[0]}${r_mass[1]}HOSTNAME        $end = ${r_mass[2]}${r_mass[3]}$HOSTNAME$end"
echo -e "${r_mass[0]}${r_mass[1]}TIMEZONE        $end = ${r_mass[2]}${r_mass[3]}$TIMEZONE$end"
echo -e "${r_mass[0]}${r_mass[1]}USER            $end = ${r_mass[2]}${r_mass[3]}$USER$end"
echo -e "${r_mass[0]}${r_mass[1]}OS              $end = ${r_mass[2]}${r_mass[3]}$OS$end"
echo -e "${r_mass[0]}${r_mass[1]}DATE            $end = ${r_mass[2]}${r_mass[3]}$DATE$end"
echo -e "${r_mass[0]}${r_mass[1]}UPTIME          $end = ${r_mass[2]}${r_mass[3]}$UPTIME$end"
echo -e "${r_mass[0]}${r_mass[1]}UPTIME_SEC      $end = ${r_mass[2]}${r_mass[3]}$UPTIME_SEC$end"
echo -e "${r_mass[0]}${r_mass[1]}IP              $end = ${r_mass[2]}${r_mass[3]}$IP$end"
echo -e "${r_mass[0]}${r_mass[1]}MASK            $end = ${r_mass[2]}${r_mass[3]}$MASK$end"
echo -e "${r_mass[0]}${r_mass[1]}GATEWAY         $end = ${r_mass[2]}${r_mass[3]}$GATEWAY$end"
echo -e "${r_mass[0]}${r_mass[1]}RAM_TOTAL       $end = ${r_mass[2]}${r_mass[3]}$RAM_TOTAL$end"
echo -e "${r_mass[0]}${r_mass[1]}RAM_USED        $end = ${r_mass[2]}${r_mass[3]}$RAM_USED$end"
echo -e "${r_mass[0]}${r_mass[1]}RAM_FREE        $end = ${r_mass[2]}${r_mass[3]}$RAM_FREE$end"
echo -e "${r_mass[0]}${r_mass[1]}SPACE_ROOT      $end = ${r_mass[2]}${r_mass[3]}$SPACE_ROOT$end"
echo -e "${r_mass[0]}${r_mass[1]}SPACE_ROOT_USED $end = ${r_mass[2]}${r_mass[3]}$SPACE_ROOT_USED$end"
echo -e "${r_mass[0]}${r_mass[1]}SPACE_ROOT_FREE $end = ${r_mass[2]}${r_mass[3]}$SPACE_ROOT_FREE$end\n"

if [[ $no_value_color == 1 ]]
    then 
    echo -e "Column 1 background = (default) (green)"
    echo -e "Column 1 font color = (default) (blue)"    
    echo -e "Column 2 background = (default) (purple)"
    echo -e "Column 2 font color = (default) (black)"
    else 
    echo -e "Column 1 background = ${background_color1} ${color[0]}"
    echo -e "Column 1 font color = ${text_color1} ${color[1]}"
    echo -e "Column 2 background = ${background_color2} ${color[2]}"
    echo -e "Column 2 font color = ${text_color2} ${color[3]}"
fi