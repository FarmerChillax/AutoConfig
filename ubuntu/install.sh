#!/bin/bash


sudo apt install ssh git vim net-tools curl wget unzip -y

sudo apt update
sudo apt install pipx -y
pipx ensurepath

pipx install poetry


