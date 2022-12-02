#!/bin/bash

cd ${GITHUB_WORKSPACE}/modules

declare -a files_array
for file in $2
do
    filePath = "$(cd "$(dirname "$file")"; pwd -P)/$(basename "$file")"
    files_array+=($filePath)
done

echo "files=${files_array[@]}" >> $GITHUB_OUTPUT