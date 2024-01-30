#!/bin/bash

# Check if Java is installed
if ! command -v java &> /dev/null
then
    echo "Java is not installed. Installing Java..."
    sudo apt update
    sudo apt install default-jdk -y
fi

# Download Dependency-Check
wget https://github.com/jeremylong/DependencyCheck/releases/download/v9.0.9/dependency-check-9.0.9-release.zip

# Unzip Dependency-Check
unzip dependency-check-9.0.9-release.zip

# Navigate to Dependency-Check directory
cd dependency-check

# Run Dependency-Check scan on the project directory
./dependency-check.sh --scan /home/ubuntu/project-name/**
