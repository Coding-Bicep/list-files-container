#!/bin/bash -l

cd $1

pwd

declare -a files_array
for file in $2
do
    files_array+=($file)
done

# for value in "${files_array[@]}"
# do
#      echo $value
# done

echo "${files_array[@]}" >> $GITHUB_OUTPUT
