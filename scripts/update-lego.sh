#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl update -f ${ROOT_DIR}/config-maps/kube-lego.yaml
kubectl update -f ${ROOT_DIR}/deployments/kube-lego.yaml
