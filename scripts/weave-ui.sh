#! /usr/bin/env bash

curl --silent -L --remote-name https://cloud.weave.works/launch/k8s/weavescope.yaml

kubectl port-forward $(kubectl get pod --selector=weave-scope-component=app -o jsonpath='{.items..metadata.name}') 4040



