#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl create -f ${ROOT_DIR}/services/es-discovery.yaml
kubectl create -f ${ROOT_DIR}/services/es.yaml
kubectl create -f ${ROOT_DIR}/deployments/es-master.yaml