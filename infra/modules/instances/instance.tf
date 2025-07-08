resource "google_compute_instance" "app_glpi" {
  name                      = var.vm_name
  project                   = "devops-464620"
  machine_type              = var.machine_type
  zone                      = var.zone
    can_ip_forward          = true
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = var.boot_disk_image
      size  = var.boot_disk_size
      type  = var.type_disk
    }
    auto_delete = false
  }



  network_interface {
    network    = var.name_vpc
    subnetwork = var.subnet_name_vms

    access_config {
      # Necessário se quiser IP público; remova se for só IP privado
    }
  }
}
