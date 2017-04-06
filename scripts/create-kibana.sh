#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl create --save-config -f ${ROOT_DIR}/services/kibana.yaml
kubectl create --save-config -f ${ROOT_DIR}/deployments/kibana.yaml
