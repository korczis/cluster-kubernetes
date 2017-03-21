#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl apply -f ${ROOT_DIR}/services/rabbitmq.yml
kubectl apply -f ${ROOT_DIR}/services/rabbitmq-headless.yml
kubectl apply -f ${ROOT_DIR}/services/rabbitmq-management.yml
kubectl apply -f ${ROOT_DIR}/stateful-sets/rabbitmq.yml
