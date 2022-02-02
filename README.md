# container-devshell
A quick Ubuntu based image along with some dev tools.

## building
Syntax:
```
./build.sh [ tag* ]
```
Without a parameter :latest is build. \
With more than 1 parameter the 1 tab is built and pushed. Then the other are create as a copy of the first.

```
./build 1.0.3 latest
```
This build 1.0.3 and set latest to be the same as 1.0.3

## Pod definition
The repo contains `devshell.pod.yaml` which can be used to launch a Pod in a Kubernetes cluster (providing security allows it). \
The Pod can be applied to cluster like this:
```
kubectl apply -f devshell.pod.yaml [--namespace <namespace>]
```
The namespace part is optional.