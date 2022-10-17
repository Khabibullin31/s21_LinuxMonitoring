#!/bin/bash

timedatectl set-timezone Europe/Moscow
hostname | awk '{print "HOSTNAME = " $0}'
timedatectl | awk '{print "TIMEZONE = " $3 $4 $5}' | grep Moscow
echo "$USER" | awk '{print "USER = " $0}'
cat /etc/issue | sed -r '/^\s*$/d' | awk '{print "OS = " $1,$2,$3}'
date | awk '{print "DATE = " $3" "$2" "$6" "$4}'
uptime | awk '{print "UPTIME = " $3}'
cat /proc/uptime | awk '{print "UPTIME_SEC = " int($1)}'
hostname -I | awk '{print "IP = " $0}'
ifconfig lo | grep netmask | awk '{print "MASK = " $4}'
ip r | grep default | awk '{print "GATEWAY = " $3}'
free -m | awk '/Mem:/{printf "RAM_TOTAL = %.3fGb\n", $2/1024}'
free -m | awk '/Mem:/{printf "RAM_USED = %.3fGb\n", $3/1024}'
free -m | awk '/Mem:/{printf "RAM_FREE = %.3fGb\n", $4/1024}'
df /root/ | awk '/\/$/  {printf "SPACE_ROOT = %.2fMB\n", $2/1024}'
df /root/ | awk '/\/$/  {printf "SPACE_ROOT_USED = %.2fMB\n", $3/1024}'
df /root/ | awk '/\/$/  {printf "SPACE_ROOT_FREE = %.2fMB\n", $4/1024}'