terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.42.0"
    }
  }
}

provider "google" {
  # Configuration options
}

# Módulo VPC
module "vpc" {
  source = "./infra/modules/vpc"
}

# Módulo Instances
module "Instances" {
  source = "./infra/modules/instances"
  depends_on = [ module.vpc ]
}
