#!/bin/bash

# Update package lists
sudo apt update -y

# Install OpenJDK 11
sudo apt install openjdk-11-jre-headless -y

# Install Maven
sudo apt install maven -y

# Check Maven version
mvn -version
