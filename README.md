# k8s-elasticsearch
The purpose of this repository is to deploy Elasticsearch cluster easily in Kubernetes

## Usage

### Kubernetes

`kubectl apply -f elasticsearch-deployment.yaml`

Elasticsearch default running in `kube-system` namespace, modify the `elasticsearch-deployment.yaml` namespace if you don't want to deploy elasticsearch to `kube-system` namespace.