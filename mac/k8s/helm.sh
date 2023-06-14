#!/bin/bash

echo 🍁 开始安装 helm
brew install helm 

echo 🍁 开始配置 helm 命令补全

echo "source <(helm completion zsh)" >> ~/.zshrc

echo ✅ helm 安装完成, 请手动重载环境
echo "命令: source ~/.zshrc"
