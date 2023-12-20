provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_instance" "firstvm" {
  name         = "helloworld"
  machine_type = "n2-standard-2"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-focal-v20230213"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
