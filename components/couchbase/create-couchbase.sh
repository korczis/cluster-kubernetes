#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

# TODO: Get zone automatically
ZONE="europe-west1-d"

ETCD_NODE=`kubectl describe pod etcd-cluster | grep Node | awk '{print $2}'| sed 's/\/.*//' | head -n 1`
ETCD_IP=`kubectl describe pod etcd-cluster | grep IP: | awk '{print $2}' | head -n 1`
PASSWORD=`openssl rand -base64 16`
CMD="curl -L http://${ETCD_IP}:2379/v2/keys/couchbase.com/userpass -X PUT -d value=\"couchbase:${PASSWORD}\""

# gcloud compute ssh --zone europe-west1-b

echo "Zone: ${ZONE}"
echo "Node: ${ETCD_NODE}"
echo "Internal IP: ${ETCD_IP}"
echo "Password: ${PASSWORD}"
echo "Command: ${CMD}"

eval "gcloud compute ssh --zone ${ZONE} ${ETCD_NODE} --command \"${CMD}\""

kubectl create --save-config -f ${ROOT_DIR}/deployments/couchbase-admin-server.yaml
kubectl create --save-config -f ${ROOT_DIR}/deployments/couchbase-server.yaml

kubectl create --save-config -f ${ROOT_DIR}/services/couchbase-service.yaml
kubectl create --save-config -f ${ROOT_DIR}/services/couchbase-admin-service.yaml

kubectl create --save-config -f ${ROOT_DIR}/deployments/couchbase-sync-gateway.yaml
kubectl create --save-config -f ${ROOT_DIR}/services/couchbase-sync-gateway.yaml

kubectl describe service couchbase-sync-gateway
