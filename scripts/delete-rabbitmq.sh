#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl delete -f ${ROOT_DIR}/stateful-sets/rabbitmq.yml
kubectl delete -f ${ROOT_DIR}/services/rabbitmq-management.yml
kubectl delete -f ${ROOT_DIR}/services/rabbitmq-headless.yml
kubectl delete -f ${ROOT_DIR}/services/rabbitmq.yml



