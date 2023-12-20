# Defina a variável de zona, por exemplo:
variable "zone" {
  default = "us-west1-b"
}

resource "google_compute_instance" "firstvm" {
  name         = "helloworld"
  machine_type = "n2-standard-2"
  zone         = "us-west1-c"  # Substitua pela zona desejada

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
