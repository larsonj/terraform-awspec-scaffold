#!/bin/bash
BUCKET=$1
if [ -n "${BUCKET}" ]; then
  terraform remote config \
     -backend=s3 \
     -backend-config="bucket=$BUCKET" \
     -backend-config="key=global/s3/terraform.tfstate" \
     -backend-config="region=us-east-1" \
     -backend-config="encrypt=true"
else
   echo "usage: set-remote-terraform-state.sh [bucketname]"
fi
