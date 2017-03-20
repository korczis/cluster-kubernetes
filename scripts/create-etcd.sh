#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl create -f ${ROOT_DIR}/deployments/etcd-operator.yaml
kubectl get thirdpartyresources
kubectl create -f ${ROOT_DIR}/clusters/etcd.yaml
