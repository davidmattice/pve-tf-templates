##############################
# Proxmox Virtual Environment 
##############################
variable "pve_node_name" {
    description = "PVE hostname to create this template on.  Defaults to first host in the Cluster."
    type        = string
    default     = ""
}

##############################
# Template Details
##############################
variable "pve_template_id" {
    description = "This is the ID of this tempalte.  Must be unique for each template."
    type        = string
}
variable "pve_template_version" {
    description = "This is the version tag to apply to this telplate."
    type        = string
    default     = "vm-modtest"
}

variable "distro_url" {
    description = "This is the full path URL to the ISO image to be pulled down"
    type        = string
}
variable "distro" {
    description = "This is the distro name that will be used in the template name"
    type        = string
}

variable "distro_name" {
    description = "This is the name of the version to use from this distro"
    type        = string
}
variable "template_tags" {
    description = "The tag on the template to be used.  The first match will be used.  Template must have a tag \"template\" on it"
    type        = list(string)
    default     = []
}
