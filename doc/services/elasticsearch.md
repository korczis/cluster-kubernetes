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