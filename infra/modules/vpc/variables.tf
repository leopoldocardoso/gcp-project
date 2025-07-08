variable "project_id" {
  description = "The ID of the project in which the resources will be created"
  type        = string
  default     = "devops-464620"
}

variable "region" {
  description = "The region in which the resources will be created"
  type        = string
  default     = "us-central1"

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

variable "subnet_name_gke" {
  description = "Name of the subnet"
  type        = string
  default     = "sub-gke-project-gcp"
}

