#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl delete -f ${ROOT_DIR}/services/couchbase-sync-gateway.yaml
kubectl delete -f ${ROOT_DIR}/deployments/couchbase-sync-gateway.yaml

kubectl delete -f ${ROOT_DIR}/services/couchbase-admin-service.yaml
kubectl delete -f ${ROOT_DIR}/services/couchbase-service.yaml

kubectl delete -f ${ROOT_DIR}/stateful-sets/couchbase-server.yaml
kubectl delete -f ${ROOT_DIR}/stateful-sets/couchbase-admin-server.yaml
