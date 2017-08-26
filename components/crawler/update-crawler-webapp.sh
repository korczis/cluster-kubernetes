#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl apply -f ${ROOT_DIR}/services/crawler-webapp.yaml
kubectl apply -f ${ROOT_DIR}/deployments/crawler-webapp.yaml
