#! /usr/bin/env bash

kubectl get pods -l app=prometheus -o name | sed 's/^.*\///' | xargs -I{} kubectl port-forward {} 9090:9090
