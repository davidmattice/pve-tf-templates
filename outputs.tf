output "template" {
    description = "Full configuration of the created template."
    value       = module.template.template
}

output "nodes" {
    description = "List of PVE nodes in the cluster pointed to by the PROXMOX Endpoint."
    value       = module.template.nodes
}

output "datastores" {
    description = "List of datastores found on the PVE node."
    value       = module.template.datastores
}

output "dns" {
    description = "DNS configuration of the PVE node."
    value       = module.template.dns
}

output "image" {
    description = "Details of the ISO image used to create the template."
    value       = module.template.image
}
