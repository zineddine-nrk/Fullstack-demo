#!/bin/bash

# Update system
sudo apt update -y

# Basic tools
sudo apt install -y \
  ca-certificates \
  curl \
  gnupg \
  lsb-release \
  git

# Python + pip
sudo apt install -y python3 python3-pip

# Docker
sudo apt install gnome-terminal -y
sudo apt-get update
sudo apt-get install ./docker-desktop-amd64.deb -y


# Add vagrant user to docker group
#sudo usermod -aG docker vagrant

# Docker Compose (v1)
#sudo apt install -y docker-compose

# Enable Docker
#sudo systemctl start docker
