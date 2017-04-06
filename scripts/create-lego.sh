#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl create --save-config -f ${ROOT_DIR}/config-maps/kube-lego.yaml
kubectl create --save-config -f ${ROOT_DIR}/deployments/kube-lego.yaml
