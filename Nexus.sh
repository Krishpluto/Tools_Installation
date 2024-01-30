#!/bin/bash

# Download Nexus
wget https://download.sonatype.com/nexus/3/nexus-3.64.0-04-unix.tar.gz -P /opt/

# Extract Nexus
tar -xf /opt/nexus-3.64.0-04-unix.tar.gz -C /opt/

# Create Nexus user
sudo adduser nexus

# Change ownership of Nexus directories
sudo chown -R nexus:nexus /opt/nexus-3.64.0-04/
sudo chown -R nexus:nexus /opt/sonatype-work/

# Start Nexus
sudo -u nexus /opt/nexus-3.64.0-04/bin/nexus start

# Check if Nexus is running
ps aux | grep nexus
