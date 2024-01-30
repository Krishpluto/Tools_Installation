#!/bin/bash

# Switch to root user
sudo su

# Run SonarQube Docker container
docker run -d -p 9000:9000 sonarqube:lts-community

# Check running Docker containers
docker ps
