#!/usr/bin/env bash

read -p "Are you sure you want to import terraform state (y/n)? " verify

if [[ $verify == "y" ]]; then
  echo "Importing bootstrap state"
  ./run.sh import module.s3.cloudfoundry_service_instance.bucket b3f01c36-cc79-4e4a-9a06-f1ecf1fe9110
  ./run.sh import cloudfoundry_service_key.bucket_creds b8ce35d4-15c7-4651-b5c8-08a65583622e
  ./run.sh plan
else
  echo "Not importing bootstrap state"
fi
