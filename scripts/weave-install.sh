#! /usr/bin/env bash

# See https://www.weave.works/weave-net-kubernetes-integration/
kubectl apply -f https://git.io/weave-kube

# See https://www.weave.works/docs/scope/latest/installing/#k8s
kubectl apply -f 'https://cloud.weave.works/launch/k8s/weavescope.yaml'

