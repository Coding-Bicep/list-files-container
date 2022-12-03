#!/bin/bash

echo "Current Directory: $1"
echo "Extension: $2"
echo "Container Registry: $3"
echo "Version: $4"

cd ${GITHUB_WORKSPACE}

declare -a files_array
for file in $2
do
    echo $file
    file_path=$(dirname $file)
    echo $file_path
    file_name_without_extension="${file%%.*}"
    echo $file_name_without_extension
    files_array+=($file)
done

# echo "files=${files_array[@]}" >> $GITHUB_OUTPUT