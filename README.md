# azure-vm-setup
This script(create_vm.sh) automates the process of creating an Azure virtual machine with Ubuntu 20.04 LTS image, generating an SSH key pair if necessary, and deploying the VM in the East US region with the specified size. It utilizes the Azure CLI for VM creation and SSH key management.
Open in Git Bash and run the shell file for the creation of VM.
In this case I had resource group created in the account,I just attached it.Can create resource group with `az group create --name myGroup --location East US`.
Log into VM with `azureuser@publicIpAddress`.
