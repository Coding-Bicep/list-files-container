#!/bin/bash

####    Inputs for this bash script ###############
# Current Directory: $1
# Extension: $2
# Container Registry: $3
# Version: $4
# ClientId: $5
# Password: $6
# TennantId: : $7

# cd ${GITHUB_WORKSPACE}
az login --service-principal --username "$5" --password "$6" --tenant $7

for file in $2
do
    echo $file
    file_path=$(dirname $file)
    echo $file_path
    file_name_without_extension="${file%%.*}"
    acr="br:$3/$file_name_without_extension:$4"
    az bicep publish -f $file --target $acr
done

echo "result=success" >> $GITHUB_OUTPUT