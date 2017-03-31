#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl create -f ${ROOT_DIR}/services/gce-lbc-service.yaml
kubectl create -f ${ROOT_DIR}/replication-controllers/gce-lbc-controller.yaml
