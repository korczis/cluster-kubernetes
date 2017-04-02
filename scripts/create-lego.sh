#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl create -f ${ROOT_DIR}/config-maps/kube-lego.yaml
kubectl create -f ${ROOT_DIR}/deployments/kube-lego.yaml
