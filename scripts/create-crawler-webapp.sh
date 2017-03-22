#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl create -f ${ROOT_DIR}/services/crawler-webapp.yaml
kubectl create -f ${ROOT_DIR}/deployments/crawler-webapp.yaml
