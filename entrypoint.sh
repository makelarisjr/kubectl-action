#!/bin/bash
set -e

base64 -d <<< "$1" > /tmp/kubeconfig

# install latest version of kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl

export KUBECONFIG=/tmp/kubeconfig

bash -c "kubectl $2"