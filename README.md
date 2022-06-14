<p align="center">
  <a href="https://github.com/txj-xyz/scripting">
    <img src="https://gitlab.unige.ch/Joakim.Tutt/Best-README-Template/-/raw/master/images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Scripting</h3>

  <p align="center">
    This folder has everything related to scripting functionality, this can include anything that can be hosted on Github as a CMS.
  </p>
</p>

## [Kubernetes](/kubernetes)

* [Helm + Kubectl Installer](/kubernetes/helm-kubectl.sh)
    ```
    wget -O - https://raw.githubusercontent.com/txj-xyz/scripting/master/kubernetes/helm-kubectl.sh | bash
    ```
* [K3S Binary Installer](/kubernetes/k3s-installer.sh)
    ```
    wget -O - https://raw.githubusercontent.com/txj-xyz/scripting/master/kubernetes/k3s-installer.sh | bash
    ```
* [Rancher Docker Single-Node System Cleaner](/kubernetes/rancher-clean-node.sh)
    * removes all related storage to Rancher components and its local storage
    <br />
    
    ```
    wget -O - https://raw.githubusercontent.com/txj-xyz/scripting/master/kubernetes/rancher-clean-node.sh | bash
    ```
    
## [\*POSIX / UNIX](/bash)
* [SSH Updater Tool](/bash/ssh-updater.sh)
    * updates local ssh version for mostly ubuntu only
    ```
    wget -O - https://raw.githubusercontent.com/txj-xyz/scripting/master/bash/ssh-updater.sh | bash
    ```
* [Netplan static IP Configuration Tool](/bash/netplan-static-ip-tool.sh)
    ```
    wget -O - https://raw.githubusercontent.com/txj-xyz/scripting/master/bash/netplan-static-ip-tool.sh | bash
    ```
* [Rsync Man-in-the-middle Proxy Tool](/bash/rsync-middleman.sh)
    * uses your PC / Server as a middle man for a file / recursive folder transfer using rsync
    <br />
    
    ```
    wget https://raw.githubusercontent.com/txj-xyz/scripting/master/bash/rsync-middleman.sh; \
    sudo chmod +x rsync-middleman.sh; \
    sudo mv rsync-middleman.sh /usr/local/bin/
    ```
