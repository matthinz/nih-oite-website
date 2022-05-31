#!/usr/bin/env bash

if [[ ! -f "secrets.auto.tfvars" ]]; then
  ../create_space_deployer.sh matt.hinz config-bootstrap-deployer > secrets.auto.tfvars
fi

if [[ $# -gt 0 ]]; then
  echo "Running terraform $@"
  terraform $@
else
  echo "Not running terraform"
fi
