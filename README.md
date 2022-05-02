# About

This folder has everything related to scripting functionality, this can include anything that can be hosted on Github as a CMS.

---

# Scripts
Kubernetes Related: 
[`/kubernetes`](https://github.com/txj-xyz/scripting/tree/master/kubernetes/)

`helm` + `kubectl` installer:
```bash
curl https://raw.githubusercontent.com/txj-xyz/scripting/master/kubernetes/helm-kubectl.sh | bash
```

`k3s` binary installer:

```bash
curl https://raw.githubusercontent.com/txj-xyz/scripting/master/kubernetes/k3s-installer.sh | bash
```

Rancher Docker Single-Node system cleaner:
 - Removes all related storage to Rancher components and its local storage.

```bash
curl https://raw.githubusercontent.com/txj-xyz/scripting/master/kubernetes/rancher-clean-node.sh | bash
```



---
*NIX Related: 
[`/bash`](https://github.com/txj-xyz/scripting/tree/master/bash/)

`netplan` static IP configuration tool.

```bash
curl https://raw.githubusercontent.com/txj-xyz/scripting/master/bash/netplan-static-ip-tool.sh | bash
```

`rsync` man-in-the-middle proxy tool, uses your PC / Server as a middle man for a file / recursive folder transfer using `rsync` 

```bash
wget https://raw.githubusercontent.com/txj-xyz/scripting/master/bash/rsync-middleman.sh; \
sudo chmod +x rsync-middleman.sh; \
sudo mv rsync-middleman.sh /usr/local/bin/
```
