#! /usr/bin/env bash

kubectl port-forward $(kubectl get pod --selector=component=busted-opossum-etcd -o jsonpath='{.items..metadata.name}') 3000