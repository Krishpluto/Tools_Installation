#!/bin/bash

# Update package lists
sudo apt update

# Install Docker
sudo apt install docker.io -y

# Add the current user to the docker group
sudo usermod -aG docker ubuntu

# Activate changes to group membership
newgrp docker

# Test Docker installation by pulling a sample image
docker pull hello-world
