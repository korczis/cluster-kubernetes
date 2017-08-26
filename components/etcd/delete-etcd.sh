#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl delete -f ${ROOT_DIR}/clusters/etcd.yaml
kubectl delete -f ${ROOT_DIR}/deployments/etcd-operator.yaml

