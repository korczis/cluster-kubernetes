#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl create --save-config -f ${ROOT_DIR}/services/es-discovery.yaml
kubectl create --save-config -f ${ROOT_DIR}/services/es.yaml
kubectl create --save-config -f ${ROOT_DIR}/deployments/es-master.yaml