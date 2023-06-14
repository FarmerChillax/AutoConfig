#!/bin/bash


sudo apt install ssh git vim net-tools curl wget unzip -y


curl -sfL https://rancher-mirror.rancher.cn/k3s/k3s-install.sh | INSTALL_K3S_MIRROR=cn INSTALL_K3S_VERSION="v1.25.0+k3s1" sh -s - server --cluster-init


# curl -sfL https://rancher-mirror.rancher.cn/k3s/k3s-install.sh | INSTALL_K3S_VERSION=v1.25.5+k3s sh -s - server --cluster-init