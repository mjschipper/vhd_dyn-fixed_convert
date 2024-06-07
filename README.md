
# Azure VHD Management Scripts

This repository contains two scripts designed to facilitate the management of Virtual Hard Disk (VHD) files stored on Azure Blob Storage using an Ubuntu 22.04 environment. The scripts handle the installation of necessary dependencies and the downloading, converting, and uploading of VHD files.

## 1. `install_dependencies.sh`

This script installs all the necessary tools and software required for managing VHD files on Azure, including the Azure CLI, azcopy, and qemu-img.

### Purpose

The purpose of this script is to prepare an Ubuntu 22.04 system by installing all necessary dependencies to interact with Azure Blob Storage and perform disk image operations.

### Setup

To set up the script:

1. Download or clone this repository to your Ubuntu system.
2. Navigate to the directory containing `install_dependencies.sh`.

### Usage

To run the script:

```bash
chmod +x install_dependencies.sh
sudo ./install_dependencies.sh
```

This script will install the Azure CLI, azcopy, and qemu-utils. It requires internet access to download these packages.

## 2. `vhd_management.sh`

This script performs the downloading of a dynamic VHD from Azure Blob Storage, converts it to a fixed VHD, and then uploads the converted VHD back to Azure.

### Purpose

The script automates the process of converting VHD files from dynamic to fixed format to meet specific deployment or performance requirements.

### Configuration

Before running the script, configure the following variables within the script:

- `STORAGE_ACCOUNT`: Set this to your Azure Storage Account name.
- `STORAGE_CONTAINER`: Set this to your Azure Blob Storage container name.
- `SAS_TOKEN`: Set this to your Shared Access Signature token, beginning with '?'.
- `OLD_FILENAME`: Set this to the name of the original VHD file.
- `NEW_FILENAME`: Set this to the desired name of the converted VHD file.

### Usage

To use the script:

```bash
chmod +x vhd_management.sh
./vhd_management.sh
```

Ensure that `azcopy` and `qemu-img` are installed and that you have valid Azure credentials and permissions to access the specified Blob Storage.

### Notes

- Always verify the SAS token and permissions associated with your Azure Storage Account to ensure the script can perform its operations without interruptions.
- Ensure sufficient local storage is available for temporary storage of the VHD files during the conversion process.
