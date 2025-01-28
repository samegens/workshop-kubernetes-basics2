# Manifests voor de Workshop Kubernetes basics deel 2

Installeer eerst [Ingress Nginx](https://kubernetes.github.io/ingress-nginx/deploy/) en
[Metrics Server](https://github.com/kubernetes-sigs/metrics-server):

``` bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.12.0/deploy/static/provider/cloud/deploy.yaml
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
```

Deze repo bevat de manifest files die gebruikt zijn tijdens de workshop. De volgorde is:

1. [base](base), einde van [basics deel 1](https://github.com/samegens/workshop-kubernetes-basics)
2. [res](res) (resources)
3. [hpa](hpa) (Horizontal Pod Autoscaler)
4. [volumes](volumes) (Volumes)
5. [pv](pv) (Persistent Volumes & Persistent Volume Claims)
6. [config](config) (ConfigMap)
7. [secret](secret) (Secret)
8. [Helm](helm)

Om de resources uit te rollen:

``` bash
kubectl apply -f <path to yml>
```

Om de resources weer te verwijderen:

``` bash
kubectl delete -f <path to yml>
```
