# About

This folder has everything related to either K8s or something else close by.


# Scripts

helm + kubectl installer:

```bash
curl https://raw.githubusercontent.com/txj-xyz/scripting/master/kubernetes/helm-kubectl.sh | bash
```

k3s binary download + install:

```bash
apt install curl -y; \
wget https://github.com/k3s-io/k3s/releases/download/v1.23.6%2Bk3s1/k3s; \
chmod +x k3s; \
mv k3s /usr/local/bin/;
```