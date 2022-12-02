#!/bin/bash

cd ${GITHUB_WORKSPACE}/modules

declare -a files_array
for file in $2
do
    #filePath="$(cd "$(dirname "$file")"; pwd -P)/$(basename "$file")"
    files_array+=(${GITHUB_WORKSPACE}/modules/$file)
done

echo "files=${files_array[@]}" >> $GITHUB_OUTPUT