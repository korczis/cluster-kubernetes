## Couchbase

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

## Couchbase Sync Gateway

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
