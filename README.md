# k8s-elasticsearch
The purpose of this repository is to deploy Elasticsearch cluster easily in Kubernetes.

Elasticsearch v7+ use `cluster.initial_master_nodes` instead of `discovery.zen.minimum_master_nodes`, it's easily to config if elasticsearch run on the bare-metal, but it is troublesome for kubernetes.
Because the pod name can not be determined before elasticsearch run. Official or other chart deploy elasticsearch cluster with `StatefulSet`, it can determine pod name before elasticsearch pod created.
But if not use `StatefulSet`, it's not works well.

This repository solve above problem. Support `StatefulSet`,`Deployment`,`DaemonSet` to deploy elasticsearch cluster.

## Usage

### Kubernetes

`kubectl apply -f elasticsearch-deployment.yaml`

Elasticsearch default running in `kube-system` namespace, modify the `elasticsearch-deployment.yaml` namespace if you don't want to deploy elasticsearch to `kube-system` namespace.

### Official Native

If not need to this feature, setting container args to `eswrapper`, it keep the behavior consistent with the official. 

Examples: `docker run -it --rm pytimer/elasticsearch:7.7.1-k8s eswrapper`