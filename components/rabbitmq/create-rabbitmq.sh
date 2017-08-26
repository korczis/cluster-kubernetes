#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl create --save-config -f ${ROOT_DIR}/services/rabbitmq.yml
kubectl create --save-config -f ${ROOT_DIR}/services/rabbitmq-headless.yml
kubectl create --save-config -f ${ROOT_DIR}/services/rabbitmq-management.yml
kubectl create --save-config -f ${ROOT_DIR}/stateful-sets/rabbitmq.yml
