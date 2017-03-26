#! /usr/bin/env bash

ROOT_DIR=`dirname $BASH_SOURCE`/..

openssl req -newkey rsa:4096 -nodes -sha512 -x509 -days 3650 -nodes -out ${ROOT_DIR}/certs/ca.pem -keyout ${ROOT_DIR}/certs/client.pem
