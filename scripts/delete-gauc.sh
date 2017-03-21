#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl delete -f ${ROOT_DIR}/deployments/gauc.yaml
kubectl delete -f ${ROOT_DIR}/services/gauc.yaml
