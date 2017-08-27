# cluster-kubernetes

Kubernetes Cluster

## Charts/Modules aka Goodies

See [charts/README.md](charts/README.md)

## Prerequisites

- Kubernetes Cluster
- [kubectl](https://kubernetes.io/docs/user-guide/kubectl-overview/) - is a command line interface for running commands against Kubernetes clusters
- [helm](https://docs.helm.sh/using_helm/#installing-helm) - the package manager for Kubernetes

## Getting Started

### Clone repository

```
git clone https://github.com/ApolloCrawler/cluster-kubernetes
```

### Enter directory with source

```
cd cluster-kubernetes
```

### Initialize helm

```
helm init
```

### Deploy helm application

```
helm install .
```

## References

- [coreos/etcd-operator](https://github.com/coreos/etcd-operator) - etcd operator creates/configures/manages etcd clusters atop Kubernetes
- [couchbase/kubernetes](https://github.com/couchbase/kubernetes) - Couchbase Server on Kubernetes
- [pires/kubernetes-elasticsearch-cluster](https://github.com/pires/kubernetes-elasticsearch-cluster) - Elasticsearch cluster on top of Kubernetes made easy.
- [pires/kubernetes-elk-cluster](https://github.com/pires/kubernetes-elk-cluster) - ELK (Elasticsearch + Logstash + Kibana) cluster on top of Kubernetes made easy.
- [nanit/kubernetes-rabbitmq-cluster](https://github.com/nanit/kubernetes-rabbitmq-cluster) - Deploy-ready rabbitmq cluster for kubernetes 1.5.X
- [peter-evans/nominatim-k8s](https://github.com/peter-evans/nominatim-k8s) - Nominatim for Kubernetes on Google Container Engine (GKE). 
