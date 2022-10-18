#!/bin/bash
echo 🍁 开始安装brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 🍁 添加cask和cask-fonts源
brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions

echo 🍁 开始换源
# 替换brew.git:
cd "$(brew --repo)" || exit
git remote set-url origin https://mirrors.aliyun.com/homebrew/brew.git
# 替换homebrew-core.git:
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core" || exit
git remote set-url origin https://mirrors.aliyun.com/homebrew/homebrew-core.git
# 应用生效
brew update
# 替换homebrew-bottles:
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles' >> ~/.bash_profile


echo 🍁 自动更新和清理
brew update
brew upgrade
brew cleanup


echo ✅ homebrew 安装完成, 请手动重载环境
echo "命令: source ~/.bash_profile"

