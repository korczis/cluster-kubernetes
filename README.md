# cluster-kubernetes

Kubernetes Cluster

## Goodies

- Couchbase
- Elasticsearch
- Kibana
- Webapp
- Workers

## Prerequisites

- Kubernetes Cluster
- [kubectl](https://kubernetes.io/docs/user-guide/kubectl-overview/) - is a command line interface for running commands against Kubernetes clusters
- [helm](https://docs.helm.sh/using_helm/#installing-helm) - the package manager for Kubernetes

## Getting Started

***Clone repository***

```
git clone https://github.com/ApolloCrawler/cluster-kubernetes
```

***Enter directory with sources***

```
cd cluster-kubernetes
```

## First Steps

### Initialize helm

```helm init```

## Running

### Weave

Built on open source software, Weave Cloud is software-as-a-service that allows DevOps teams to connect, 
monitor and deploy containers and microservices.

For more details see [weave website](https://www.weave.works/).

```
./scripts/weave-install.sh
./scripts/weave-ui.sh
```

### Services

```
./scripts/create-etcd.sh
./scripts/create-nominatim.sh
./scripts/create-es-master.sh
./scripts/create-es-other.sh
./scripts/create-kibana.sh
./scripts/create-couchbase.sh
./scripts/create-gauc.sh
./scripts/create-crawler-webapp.sh
./scripts/create-crawler-worker.sh
```

### HTTP(s) ingresses

```
./scripts/create-lego.sh
```

## References

- [coreos/etcd-operator](https://github.com/coreos/etcd-operator) - etcd operator creates/configures/manages etcd clusters atop Kubernetes
- [couchbase/kubernetes](https://github.com/couchbase/kubernetes) - Couchbase Server on Kubernetes
- [pires/kubernetes-elasticsearch-cluster](https://github.com/pires/kubernetes-elasticsearch-cluster) - Elasticsearch cluster on top of Kubernetes made easy.
- [pires/kubernetes-elk-cluster](https://github.com/pires/kubernetes-elk-cluster) - ELK (Elasticsearch + Logstash + Kibana) cluster on top of Kubernetes made easy.
- [nanit/kubernetes-rabbitmq-cluster](https://github.com/nanit/kubernetes-rabbitmq-cluster) - Deploy-ready rabbitmq cluster for kubernetes 1.5.X
- [peter-evans/nominatim-k8s](https://github.com/peter-evans/nominatim-k8s) - Nominatim for Kubernetes on Google Container Engine (GKE). 

