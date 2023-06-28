#!/bin/bash

# # install k3s
# curl -sfL https://rancher-mirror.rancher.cn/k3s/k3s-install.sh | INSTALL_K3S_MIRROR=cn sh -

# # install k3s with etcd & HA deploy
# curl -sfL https://get.k3s.io | sh -s - server --cluster-init

# 指定中国镜像源、k3s 版本号、HA 部署
curl -sfL https://rancher-mirror.rancher.cn/k3s/k3s-install.sh | INSTALL_K3S_MIRROR=cn  INSTALL_K3S_VERSION="v1.25.7+k3s1" sh -s - server --cluster-init



