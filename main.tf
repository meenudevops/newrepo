provider "google" {
    credentials = file ("gcp-account.json")
    project     = "gcp-terraform 0324119"
    region      = "europe-west4"
    zone        = "europe-west4-a"
}

resource "google_compute_instance" "default" {
 name         = "test1"
 machine_type = "e2-micro"

 boot_disk {
  initialize_params {
   image = "debian-cloud/debian-9"
  }
 }

 network_interface {
  network ="default"
 }
}

resource "google_storage_bucket" "my_bucket" {
  name     = "sample-bucket1"
  location = "europe-west4"
  force_destroy = true

  uniform_bucket_level_access = true
}
