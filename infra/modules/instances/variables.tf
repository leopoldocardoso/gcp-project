variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string
  default = "vm-vpn"
}

variable "machine_type" {
  description = "The type of machine to use for the instance."
  type        = string
  default     = "e2-standard-2"
}

variable "zone" {
  description = "The zone in which the instance will be created."
  type        = string
  default     = "us-central1-a"
}

variable "boot_disk_image" {
  description = "The image to use for the boot disk."
  type        = string
  default     = "ubuntu-2404-noble-amd64-v20250703"
}

variable "boot_disk_size" {
  description = "The size of the boot disk in GB."
  type        = number
  default     = 30
}

variable "type_disk" {
  description = "The type of disk to use for the boot disk."
  type        = string
  default     = "pd-balanced"
}

variable "name_vpc" {
  description = "Name of the VPC"
  type        = string
  default     = "vpc-project-gcp"
}

variable "subnet_name_vms" {
  description = "Name of the subnet"
  type        = string
  default     = "sub-vms-project-gcp"
}
