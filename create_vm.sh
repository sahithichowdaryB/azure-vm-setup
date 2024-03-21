#!/bin/bash

# Azure VM creation variables
vmName="myVm"
resourceGroup="myGroup"
image="Ubuntu2204"
adminUsername="azureuser"

# Path to SSH private key
sshPrivateKey="$HOME/.ssh/id_rsa"

# Check if SSH key exists
if [ ! -f "$sshPrivateKey" ]; then
    echo "SSH key does not exist. Generating SSH key..."
    ssh-keygen -t rsa -b 4096 -C "your_email@example.com" -f "$sshPrivateKey"
fi

# Run Azure CLI command to create VM
az vm create \
    --name $vmName \
    --resource-group $resourceGroup \
    --image $image \
    --admin-username $adminUsername \
    --ssh-key-value "$sshPrivateKey.pub" \
    --location "East US" \
    --size "Standard_B1s"  \
    --generate-ssh-keys

