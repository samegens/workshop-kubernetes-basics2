# Manifests voor de Workshop Kubernetes basics deel 2

Dit zijn de manifest files die gebruikt zijn tijdens de workshop. De volgorde is:

1. [base](base), einde van [basics deel 1](https://github.com/samegens/workshop-kubernetes-basics2)
2. [res](res) (resources)
3. [hpa](hpa) (Horizontal Pod Autoscaler)
4. [volumes](volumes) (Volumes)
5. [pv](pv) (Persistent Volumes & Persistent Volume Claims)
6. [config](config) (ConfigMap)
7. [secret](secret) (Secret)

Om de resources uit te rollen:

    kubectl apply -f <path to yml>
