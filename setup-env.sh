#!/bin/bash

export TF_LOG=TRACE
export TF_LOGPATH=./terraform.log

# export TF_INPUT=0
# export TF_MODULE_DEPTH=0
# export TF_SKIP_REMOTE_TESTS=1

################################
# TF_VAR Section
################################
export TF_VAR_region=us-east-1
export TF_VAR_ami=
