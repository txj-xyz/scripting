#!/bin/bash

# NOTE
# This file assumes that you have Ubuntu installed
# You're welcome to PR and edit this to more efficent standards


#Update repo list and upgrade packages
sudo apt update -qq && apt upgrade -y

#Install Curl
sudo apt install curl  -y

#Install Kubectl
sudo curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
sudo rm kubectl

#Copy K3s config to local directory
mkdir -p ~/.kube;

if [ -f /etc/rancher/k3s/k3s.yaml ]
then
    cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
fi

#Install HELM
sudo curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

clear
echo "COMPLETED."
