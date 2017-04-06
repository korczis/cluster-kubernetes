#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

kubectl replace -f ${ROOT_DIR}/ingresses/crawler-webapp.yaml
