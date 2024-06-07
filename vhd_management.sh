
#!/bin/bash

# Configuration variables
STORAGE_ACCOUNT="your_storage_account_name"
STORAGE_CONTAINER="your_container_name"
SAS_TOKEN="your_sas_token" # Ensure your SAS token starts with '?'
OLD_FILENAME="oldfilename.vhd"
NEW_FILENAME="newfilename.vhd"
LOCAL_PATH="$PWD" # Using the current working directory
AZURE_STORAGE_URL="https://$STORAGE_ACCOUNT.blob.core.windows.net/$STORAGE_CONTAINER"

# Ensure the LOCAL_PATH directory exists
mkdir -p $LOCAL_PATH

# Download the VHD file using azcopy
echo "Downloading VHD file from Azure Blob Storage..."
azcopy copy "$AZURE_STORAGE_URL/$OLD_FILENAME$SAS_TOKEN" "$LOCAL_PATH/$OLD_FILENAME"

# Perform the VHD conversion using qemu-img
echo "Converting VHD from dynamic to fixed..."
qemu-img convert -f vpc -O vpc -o subformat=fixed "$LOCAL_PATH/$OLD_FILENAME" "$LOCAL_PATH/$NEW_FILENAME"

# Upload the converted VHD back to Azure Blob Storage as a PageBlob
echo "Uploading converted VHD back to Azure Blob Storage..."
azcopy copy "$LOCAL_PATH/$NEW_FILENAME" "$AZURE_STORAGE_URL/$NEW_FILENAME$SAS_TOKEN" --blob-type PageBlob

# Print completion message
echo "Conversion and upload completed successfully."
