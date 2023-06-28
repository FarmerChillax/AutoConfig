#!/bin/bash

curl -sfL https://rancher-mirror.rancher.cn/k3s/k3s-install.sh | INSTALL_K3S_MIRROR=cn  INSTALL_K3S_VERSION="v1.25.7+k3s1" sh -s - server --cluster-init
