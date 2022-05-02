#!/bin/bash

echo "Installing WGET"
apt install wget -y;

echo "Downloading K3s"
wget https://github.com/k3s-io/k3s/releases/download/v1.23.6%2Bk3s1/k3s;
chmod +x k3s;
mv k3s /usr/local/bin/;

echo "Done installing k3s"
echo "Type: 'k3s' to get started."