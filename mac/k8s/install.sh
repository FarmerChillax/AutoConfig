#!/bin/bash

echo 🍁 开始安装 kubectl
brew install kubectl 

echo 🍁 开始配置 kubectl 命令补全

echo "source <(kubectl completion zsh)" >> ~/.zshrc

echo ✅ kubectl 安装完成, 请手动重载环境
echo "命令: source ~/.zshrc"
