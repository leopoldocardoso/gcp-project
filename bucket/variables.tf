variable "name_storage_bucket" {
  description = "Name of the storage bucket"
  type        = string
  default     = "bucket-iac-tfstate"
}

variable "location_storage_bucket" {
  description = "Location of the storage bucket"
  type        = string
  default     = "US"
}

variable "force_destroy_storage_bucket" {
  description = "Force destroy the storage bucket"
  type        = bool
  default     = true
}
