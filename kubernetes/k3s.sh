#!/bin/bash

# install k3s
curl -sfL https://rancher-mirror.rancher.cn/k3s/k3s-install.sh | INSTALL_K3S_MIRROR=cn sh -

# install k3s with etcd & HA deploy
curl -sfL https://get.k3s.io | sh -s - server --cluster-init



# merge
curl -sfL https://rancher-mirror.rancher.cn/k3s/k3s-install.sh | INSTALL_K3S_MIRROR=cn sh -s - server --cluster-init
