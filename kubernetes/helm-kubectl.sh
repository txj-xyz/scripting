#!/bin/bash

# NOTE
# This file assumes that you have Ubuntu installed
# You're welcome to PR and edit this to more efficent standards


#Update repo list and upgrade packages
apt update -qq && apt upgrade -y

#Install Curl
apt install curl  -y

#Install Kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm kubectl

#Copy K3s config to local directory
mkdir -p ~/.kube

#Install HELM
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

sleep 5;
cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
#COMPLETE
clear
echo "COMPLETED."
