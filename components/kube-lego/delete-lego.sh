#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl delete -f ${ROOT_DIR}/config-maps/kube-lego.yaml
kubectl delete -f ${ROOT_DIR}/deployments/kube-lego.yaml
# kubectl delete -f ${ROOT_DIR}/services/kube-lego.yaml