#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl delete -f ${ROOT_DIR}/services/couchbase-sync-gateway.yaml
kubectl delete -f ${ROOT_DIR}/deployments/couchbase-sync-gateway.yaml

kubectl delete -f ${ROOT_DIR}/services/couchbase-admin-service.yaml
kubectl delete -f ${ROOT_DIR}/services/couchbase-service.yaml

kubectl delete -f ${ROOT_DIR}/deployments/couchbase-admin-server.yaml
kubectl delete -f ${ROOT_DIR}/deployments/couchbase-server.yaml
