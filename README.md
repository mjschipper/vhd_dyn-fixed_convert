# vhd_dyn-fixed_convert
Shell script that uses an Ubuntu server to convert a Dynamic VHD to a Fixed VHD using qemu-img







install_dependencies.sh Script Explanation

System Update: Updates and upgrades the packages on your Ubuntu system to ensure all existing software is up to date.

Install Basic Tools: Installs curl and wget, which are useful for downloading files and software from the internet.

Install Azure CLI: Installs the Azure Command Line Interface, essential for managing Azure resources from the command line.

Install qemu-utils: Installs the qemu-utils package, which contains qemu-img, a tool required for converting and handling disk images such as VHD files.

Download and Install azcopy: Fetches and installs azcopy, a command-line utility designed for high-performance copying of data to and from Microsoft Azure Blob and File storage.

Running the Installation Script
To run this script on your Ubuntu server:

Create the Script File:

Use nano or any text editor to create a new script file:
bash
Copy code
nano install_dependencies.sh
Paste the Script:

Copy and paste the above script into the editor.
Save and Exit:

Save the file with Ctrl+O, confirm with Enter, and exit with Ctrl+X.
Make the Script Executable:

bash
Copy code
chmod +x install_dependencies.sh
Execute the Script:

bash
Copy code
./install_dependencies.sh
This script will install all the necessary tools to handle file operations with Azure Blob Storage using azcopy and disk image conversions with qemu-img, ensuring your system is ready for your planned workflows.
