# About

This project is meant to help debugging on a kubernetes worker for use by a cluster administrator. A pod can be run on a node, which enters into several host namespaces for ease of debugging the host.

# Usage

## Building the image

```
docker build . -t <img_name>
docker push <img_name>
```
Remember to modify the `yaml/\*.yaml` files so that they use your image instead!

## Deploying on kubernetes

### Running as a single pod

The container can be run on an arbitrary pod by performing:

`kubectl create -f yaml/privhost.yaml`

It is also possible to add `nodeSelector` to specify a particular target pod.

### Running as a daemonset

It can also be run as a daemonset by performing:

`kubectl create -f yaml/privhost\_daemonset.yaml`