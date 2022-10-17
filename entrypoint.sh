#!/bin/bash

ls ${GITHUB_WORKSPACE}
cd $1

declare -a files_array
for file in $2
do
    files_array+=($file)
done

echo "${files_array[@]}" >> $GITHUB_OUTPUT