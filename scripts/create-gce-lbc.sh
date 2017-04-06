#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl create --save-config -f ${ROOT_DIR}/services/gce-lbc-service.yaml
kubectl create --save-config -f ${ROOT_DIR}/replication-controllers/gce-lbc-controller.yaml
