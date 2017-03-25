#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl delete -f ${ROOT_DIR}/deployments/es-master.yaml
kubectl delete -f ${ROOT_DIR}/services/es.yaml
kubectl delete -f ${ROOT_DIR}/services/es-discovery.yaml
