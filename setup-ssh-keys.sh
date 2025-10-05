#!/bin/bash

# SSH key setup for VMs
VMS=(
    "192.168.100.30"
    "192.168.100.31" 
    "192.168.100.33"
    "192.168.100.34"
)

USER="simoda"
KEY_FILE="~/.ssh/id_ed25519.pub"

echo "Setting up SSH keys for ${#VMS[@]} VMs..."

for vm in "${VMS[@]}"; do
    echo "Copying SSH key to $vm..."
    ssh-copy-id -i $KEY_FILE $USER@$vm
done

echo "SSH key setup complete!"