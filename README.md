# Proxmox Virtual Environment - Templates

Terraform for creating VM Templates in PVE

## Environment variables

Set the following environment variables for the provider.

```
export PROXMOX_VE_ENDPOINT="https://<ip|hostname>:8006"
export PROXMOX_VE_USERNAME="<user>@<pam|pve>"
export PROXMOX_VE_PASSWORD=<password>" # This is required for SSH access to the node for some resources
```

## Using ...

1. Clone this repo
2. tf plan full_path_to_file  # Uses the script
3. tf apply full_path_to_file
