
#!/bin/bash

# Update the system
echo "Updating system packages..."
sudo apt-get update
sudo apt-get upgrade -y

# Install necessary packages
echo "Installing required tools..."
sudo apt-get install -y curl wget qemu-utils

# Install Azure CLI
echo "Installing Azure CLI..."
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Download and install azcopy
echo "Installing azcopy..."
wget https://aka.ms/downloadazcopy-v10-linux -O azcopy10.tar.gz
tar -xf azcopy10.tar.gz --strip-components=1
sudo cp azcopy /usr/local/bin/
rm azcopy10.tar.gz

# Confirm installation
echo "All dependencies have been installed successfully."
