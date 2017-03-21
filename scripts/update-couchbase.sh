#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl apply -f ${ROOT_DIR}/replication-controllers/couchbase-admin-server.yaml
kubectl apply -f ${ROOT_DIR}/replication-controllers/couchbase-server.yaml

kubectl apply -f ${ROOT_DIR}/services/couchbase-service.yaml
kubectl apply -f ${ROOT_DIR}/services/couchbase-admin-service.yaml

kubectl apply -f ${ROOT_DIR}/replication-controllers/couchbase-sync-gateway.yaml
kubectl apply -f ${ROOT_DIR}/services/couchbase-sync-gateway.yaml
