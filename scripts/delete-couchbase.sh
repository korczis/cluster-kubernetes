#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl delete -f ${ROOT_DIR}/services/couchbase-sync-gateway.yaml
kubectl create -f ${ROOT_DIR}/replication-controllers/couchbase-sync-gateway.yaml

kubectl delete -f ${ROOT_DIR}/services/couchbase-admin-service.yaml
kubectl delete -f ${ROOT_DIR}/services/couchbase-service.yaml

kubectl delete -f ${ROOT_DIR}/replication-controllers/couchbase-server.yaml
kubectl delete -f ${ROOT_DIR}/replication-controllers/couchbase-admin-server.yaml
