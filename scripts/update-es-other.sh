#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl apply -f ${ROOT_DIR}/deployments/es-client.yaml
kubectl apply -f ${ROOT_DIR}/storage-classes/es-data.yaml
kubectl apply -f ${ROOT_DIR}/services/es-data.yaml
kubectl apply -f ${ROOT_DIR}/stateful-sets/es-data.yaml
