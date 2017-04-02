## ectd-operator

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

## etcd

***Start etcd cluster***

```
$ kubectl create -f clusters/etcd.yaml
```