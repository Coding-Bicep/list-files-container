#!/bin/bash

echo "Current Directory: $1"
echo "Extension: $2"
echo "Container Registry: $3"
echo "Version: $4"
echo "ClientId: $5"
echo "Password: $6"
echo "TennantId: : $7"

cd ${GITHUB_WORKSPACE}

declare -a files_array
for file in $2
do
    echo $file
    file_path=$(dirname $file)
    echo $file_path
    file_name_without_extension="${file%%.*}"
    echo $file_name_without_extension
    az login --service-principal --username "$5" --password "$6" --tenant $7
    az bicep publish -f $file --target "br:$3/$file_name_without_extension:$4"
done

# echo "files=${files_array[@]}" >> $GITHUB_OUTPUT