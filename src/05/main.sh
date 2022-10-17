#!/bin/bash
#!/bin/bash
export START=$(date +%s%N)
if [ $# != 1 ]
then
echo "Error"
elif [ ${1: -1} != "/" ]
then 
echo "Error"
else
export number_folders=$(sudo find $1 -type d | wc -l)
export big_folders=$(sudo du -Sh $1 | sort -rh | head -5 | cat -n | awk '{print $1" - "$3", "$2}')
export number_files=$(sudo find $1 -type f | wc -l)
export conf_number_files=$(sudo find $1 -type f -name "*.conf" | wc -l)
export exe_number_files=$(sudo find $1 -type f -executable -exec du -h {} + | wc | awk '{ print $1 }')
export txt_number_files=$(sudo find $1 -type f -name "*.txt" | wc -l)
export log_number_files=$(sudo find $1 -type f -name "*.log" | wc -l)
export archive_number_files=$(sudo find $1 -regex '.*\(tar\|zip\|gz\|rar\)' | wc -l )
export link_number_files=$(sudo find $1 -type l | wc -l)
export big_files=$(sudo find $1 -type f -exec du -Sh {} + | sort -rh | head -10 | cat -n | awk '{print $1" - "$3", "$2}')
export big_exe_files=$(sudo find $1 -type f -executable -exec du -h {} + | sort -hr | head -10 | cat -n | awk '{print $1" - "$3", "$2}')
chmod 777 print.sh
./print.sh
fi