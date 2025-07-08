resource "google_compute_network" "this" {
  project                 = var.project_id
  name                    = var.name_vpc
  auto_create_subnetworks = false
  routing_mode            = "GLOBAL"

}

resource "google_compute_subnetwork" "subnet_vms_vpc_project_gcp" {
  name          = var.subnet_name_vms
  project       = var.project_id
  region        = var.region
  ip_cidr_range = "192.168.0.0/24"
  network       = google_compute_network.this.id

  private_ip_google_access = true

  depends_on = [google_compute_network.this]
}

resource "google_compute_subnetwork" "subnet_gke_project_gcp" {
  name          = var.subnet_name_gke
  project       = var.project_id
  region        = var.region
  ip_cidr_range = "192.168.1.0/24"
  network       = google_compute_network.this.id

  private_ip_google_access = true

  depends_on = [google_compute_network.this]
}
