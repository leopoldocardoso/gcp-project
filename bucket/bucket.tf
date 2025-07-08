resource "google_storage_bucket" "this" {
  name          = var.name_storage_bucket
  location      = var.location_storage_bucket
  force_destroy = var.force_destroy_storage_bucket

}
