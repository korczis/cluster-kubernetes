#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl apply -f ${ROOT_DIR}/services/es-discovery.yaml
kubectl apply -f ${ROOT_DIR}/services/es.yaml
kubectl apply -f ${ROOT_DIR}/deployments/es-master.yaml
