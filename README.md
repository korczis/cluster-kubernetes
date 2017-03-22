# cluster-kubernetes

Kubernetes Cluster

## Goodies

- Couchbase
- Elasticsearch
- Kibana
- Webapp
- Workers

## Prerequisites

- [kubectl](https://kubernetes.io/docs/user-guide/kubectl-overview/) - is a command line interface for running commands against Kubernetes clusters
- Kubernetes Cluster

## Getting Started

***Clone repository***

```
git clone https://github.com/ApolloCrawler/cluster-kubernetes
```

***Enter directory with sources***

```
cd cluster-kubernetes
```

## Running

### High Level

```
./scripts/create-etcd.sh
./scripts/create-nominatim.sh
./scripts/create-es-master.sh
./scripts/create-es-other.sh
./scripts/create-couchbase.sh
./scripts/create-gauc.sh
./scripts/create-crawler-webapp.sh
./scripts/create-crawler-worker.sh
```

### ectd-operator

For more details see [https://github.com/coreos/etcd-operator](https://github.com/coreos/etcd-operator).

***Create etcd-operator deployment***

```
$ kubectl create -f deployments/etcd-operator.yaml
```

***Check Kubernetes Third-Party Resource (TPR)***

```
$ kubectl get thirdpartyresources
NAME                      DESCRIPTION             VERSION(S)
cluster.etcd.coreos.com   Managed etcd clusters   v1beta1
```

### etcd

***Start etcd cluster***

```
$ kubectl create -f clusters/etcd.yaml
```

### Couchbase

***Add Couchbase Server Admin credentials in etcd***

```
$ kubectl describe pod etcd-cluster | grep Node | awk '{print $2}'| sed 's/\/.*//'
```

```
$ gcloud compute ssh --zone europe-west1-b gke-couchbase-server-648006db-node-qgu2
```

```
$ kubectl describe pod etcd-cluster | grep IP: | awk '{print $2}'
```

```
root@k8s~$ curl -L http://10.248.1.5:2379/v2/keys/couchbase.com/userpass -X PUT -d value="user:passw0rd"
```

Replace `user:passw0rd` with the actual values you want to use.

***Kick off Service and Replication Controller for couchbase-server***

First the replication controllers:

```
$ kubectl create -f replication-controllers/couchbase-admin-server.yaml
$ kubectl create -f replication-controllers/couchbase-server.yaml
```

Then the services:

```
$ kubectl create -f services/couchbase-service.yaml
$ kubectl create -f services/couchbase-admin-service.yaml
```

### Couchbase Sync Gateway

***Create a Sync Gateway replication set***

To kick off a Sync Gateway replica set, run:

```
$ kubectl create -f replication-controllers/couchbase-sync-gateway.yaml
```

***Create a publicly exposed Sync Gateway service***

```
$ kubectl create -f services/couchbase-sync-gateway.yaml
```

To find the IP address after the pod is running, run:

```
$ kubectl describe service sync-gateway
```

and you should see:

```
...
LoadBalancer Ingress: 104.197.15.37
...
```

where `104.197.15.37` is a publicly accessible IP. 
To verify, from your local workstation or any machine connected to the internet, 
wait for a few minutes to give it a chance to startup, and then run:

```
$ curl 104.197.15.37:4984
```

and you should see:

```
{"couchdb":"Welcome","vendor":{"name":"Couchbase Sync Gateway","version":1},"version":"Couchbase Sync Gateway/HEAD(nobranch)(04138fd)"}
```


## Elasticsearch

***Deploy***

```
$ kubectl create -f services/es-discovery.yaml
$ kubectl create -f services/es.yaml
$ kubectl create -f deployments/es-master.yaml
```

Wait until `es-master` deployment is provisioned, and

```
$ kubectl create -f deployments/es-client.yaml
$ kubectl create -f deployments/es-data.yaml
```

***Deploy (with stateful sets)***

```
$ kubectl create -f deployments/es-client.yaml
$ kubectl create -f storage-classes/es-data.yaml
$ kubectl create -f stateful-sets/es-data.yaml
$ kubectl create -f stateful-sets/es-data.yaml
```

## References

- [coreos/etcd-operator](https://github.com/coreos/etcd-operator) - etcd operator creates/configures/manages etcd clusters atop Kubernetes
- [couchbase/kubernetes](https://github.com/couchbase/kubernetes) - Couchbase Server on Kubernetes
- [pires/kubernetes-elasticsearch-cluster](https://github.com/pires/kubernetes-elasticsearch-cluster) - Elasticsearch cluster on top of Kubernetes made easy.
- [pires/kubernetes-elk-cluster](https://github.com/pires/kubernetes-elk-cluster) - ELK (Elasticsearch + Logstash + Kibana) cluster on top of Kubernetes made easy.
- [nanit/kubernetes-rabbitmq-cluster](https://github.com/nanit/kubernetes-rabbitmq-cluster) - Deploy-ready rabbitmq cluster for kubernetes 1.5.X
