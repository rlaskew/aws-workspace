#!/bin/sh

alias k=kubectl

# install eksctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin

eksctl create cluster --region us-east-1 -t t3.medium --dry-run
eksctl create cluster --region us-east-1 -t t3.medium 
kubectl get nodes

sudo yum install openssl -y
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
