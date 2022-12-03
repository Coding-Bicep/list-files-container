#!/bin/bash

echo "Current Directory: $1"
echo "Extension: $2"
echo "Container Registry: $3"
echo "Version: $4"

# cd ${GITHUB_WORKSPACE}/$1

declare -a files_array
for file in $2
do
    echo $file
    files_array+=($file)
done

# echo "files=${files_array[@]}" >> $GITHUB_OUTPUT