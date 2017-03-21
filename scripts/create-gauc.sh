#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl create -f ${ROOT_DIR}/services/gauc.yaml
kubectl create -f ${ROOT_DIR}/deployments/gauc.yaml
