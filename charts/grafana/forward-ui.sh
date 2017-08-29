#! /usr/bin/env bash

kubectl port-forward --namespace monitoring $(kubectl get pod --namespace=monitoring --selector=app=grafana -o jsonpath='{.items..metadata.name}') 3000