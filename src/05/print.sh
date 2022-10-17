#!/bin/bash

echo -e "Total number of folders (including all nested ones) = $number_folders"
echo -e "TOP 5 folders of maximum size arranged in descending order (path and size):"
echo "$big_folders"
echo "Total number of files = $number_files"
echo "Number of:"
echo "Configuration files (with the .conf extension) = $conf_number_files"
echo "Text files = $txt_number_files"
echo "Executable files = $exe_number_files"
echo "Log files (with the extension .log) = $log_number_files"
echo "Archive files = $archive_number_files"
echo "Symbolic links = $link_number_files"
echo "TOP 10 files of maximum size arranged in descending order (path, size):"
echo "$big_files"
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size)"
echo "$big_exe_files"
END=$(date +%s%N)
DIFF=$((( $END - $START )/1000000))
echo "Script execution time (in milliseconds) = $DIFF"

