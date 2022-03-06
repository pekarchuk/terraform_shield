#! /bin/bash

source .env

echo Running for $1
# Running apply
if [ -z "$1" ]
then
    terraform apply
else
    echo "terraform apply -target=module.$1"
    terraform apply -target=module.$1
fi
