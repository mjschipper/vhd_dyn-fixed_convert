#!/bin/bash

# Update the system
sudo apt-get update
sudo apt-get upgrade -y

# Install necessary packages
sudo apt-get install -y curl wget

# Install Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Install qemu-utils for disk image conversions
sudo apt-get install -y qemu-utils

# Download and install azcopy
wget https://aka.ms/downloadazcopy-v10-linux -O azcopy10.tar.gz
tar -xf azcopy10.tar.gz --strip-components=1
sudo cp azcopy /usr/local/bin/

# Clean up downloaded files
rm azcopy10.tar.gz

# Confirm installation
echo "All dependencies have been installed successfully."
