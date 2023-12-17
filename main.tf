
locals {
  template_id = length(data.proxmox_virtual_environment_vms.template.vms) > 0 ? data.proxmox_virtual_environment_vms.template.vms[0].vm_id : var.pve_template_id
}

# Find the template based on the tags provided
# data.proxmox_virtual_environment_vms.template.vms[0].vm_id
data "proxmox_virtual_environment_vms" "template" {
  tags      = var.template_tags
}

module "template" {
  source    = "git::https://github.com/davidmattice/pve-tfm-template?ref=simplify"
  providers = {
    proxmox = proxmox
  }
  pve_template_id      = var.pve_template_id
  pve_template_version = var.pve_template_version
  distro               = var.distro
  distro_name          = var.distro_name
  distro_url           = var.distro_url
  additional_tags      = var.template_tags
}
