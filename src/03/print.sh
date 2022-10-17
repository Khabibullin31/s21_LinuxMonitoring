#!/bin/bash

timedatectl set-timezone Europe/Moscow
export HOSTNAME=$(hostname | awk '{print $0}')
export TIMEZONE=$(timedatectl | grep Moscow | awk '{print $3 $4 $5}')
export USER=$(echo "$USER" | awk '{print $0}')
export OS=$(cat /etc/issue | sed -r '/^\s*$/d' | awk '{print  $1,$2,$3}')
export DATE=$(date | awk '{print  $3" "$2" "$6" "$4}')
export UPTIME=$(uptime | awk '{print $3}')
export UPTIME_SEC=$(cat /proc/uptime | awk '{print int($1)}')
export IP=$(hostname -I | awk '{print $0}')
export MASK=$(ifconfig lo | grep netmask | awk '{print $4}')
export GATEWAY=$(ip r | grep default | awk '{print $3}')
export RAM_TOTAL=$(free -m | awk '/Mem:/{printf "%.3fGb\n", $2/1024}')
export RAM_USED=$(free -m | awk '/Mem:/{printf "%.3fGb\n", $3/1024}')
export RAM_FREE=$(free -m | awk '/Mem:/{printf "%.3fGb\n", $4/1024}')
export SPACE_ROOT=$(df /root/ | awk '/\/$/  {printf "%.2fMB\n", $2/1024}')
export SPACE_ROOT_USED=$(df /root/ | awk '/\/$/  {printf "%.2fMB\n", $3/1024}')
export SPACE_ROOT_FREE=$(df /root/ | awk '/\/$/  {printf "%.2fMB\n", $4/1024}')
chmod 777 color.sh
./color.sh