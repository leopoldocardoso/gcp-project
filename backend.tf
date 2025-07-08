terraform {
  backend "gcs" {
    bucket = "bucket-iac-tfstate"
    prefix = "terraform/state"
  }
}
