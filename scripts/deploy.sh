#! /bin/bash

source .env

# Getting Arguments
while [ $# -gt 0 ]; do
  case "$1" in
    --target=*)
      target="${1#*=}"
      ;;
    --instance_count=*)
      instance_count="${1#*=}"
      ;;
    *)
      printf "Error: Invalid argument.\n"
      exit 1
  esac
  shift
done

# Running apply
if [ -z "$target" ]
then
    if [ -z "$instance_count" ]; then
        terraform apply
    else
        echo Deploying $instance_count instances per each region
        terraform apply -var instance_count=$instance_count
    fi
else
    if [ -z "$instance_count" ]; then
        echo Deploying instances on $target region
        terraform apply -target=module.$target
    else
        echo Deploying $instance_count instances on $target region
        terraform apply -target=module.$target -var instance_count=$instance_count
    fi
fi
