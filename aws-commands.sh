#!/bin/bash

## validate cf jason
# aws cloudformation validate-template --template-body $ASGCFTFILE 

## create node for control plane
# aws cloudformation create-stack --template-body $ASGCFTFILE --stack-name $ASGSTACKNAME --parameters ParameterKey=KeyName,ParameterValue=$KEYPAIR

## Delete ASG stack
# aws cloudformation delete-stack --stack-name $ASGSTACKNAME
