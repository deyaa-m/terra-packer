#!/bin/bash

# intiate terraform 
terraform init 
#run terraform plan
terraform plan --out=instance.out
terraform plan --auto-approve instance.out

# run packer 
packer build packer.json
