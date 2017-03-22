#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl delete -f ${ROOT_DIR}/deployments/crawler-webapp.yaml
kubectl delete -f ${ROOT_DIR}/services/crawler-webapp.yaml
