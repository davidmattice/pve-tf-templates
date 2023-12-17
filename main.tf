##############################
# Just call the module! 
##############################
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
  additional_tags      = var.additional_tags
}
