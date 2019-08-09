provider "google" {
  credentials = "${file("service_account.json")}"
  project     = "focused-ion-247717"
  region      = "asia-south1-a"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-packer-ubuntu-image"
  machine_type = "n1-standard-1"
  zone         = "asia-south1-a"

  boot_disk {
    initialize_params {
      image = "packer-ubuntu-image"
    }
  }

 network_interface {
    network = "default"
  }
}