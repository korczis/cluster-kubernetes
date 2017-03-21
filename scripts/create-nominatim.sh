#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl create -f ${ROOT_DIR}/services/nominatim.yaml
kubectl create -f ${ROOT_DIR}/deployments/nominatim.yaml
