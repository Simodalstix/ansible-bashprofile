# Ansible Bash Profile Setup

Simple Ansible setup to configure custom PS1 prompts across VMs.

## Setup
1. Update `inventory.yml` with your actual VM IPs and SSH details
2. Setup SSH keys: `./setup-ssh-keys.sh` (will prompt for passwords)
3. Update `ansible.cfg` with your SSH username

## Run
```bash
ansible-playbook setup-bash-profile.yml
```

## Colors
- **User prompt**: Yellow username/hostname, blue directory
- **Root prompt**: Orange username/hostname, blue directory# ansible-bashprofile
