provider "google" {
  project  = "aktestproject-322606"
  region   = "asia-south1"
  credentials = "aktestproject-322606-5dfdb2339d35.json"
}

resource "google_compute_instance" "test" {
  name         = "os1"
  machine_type = "n1-standard-1"
  zone         = "asia-south1-b"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
  }
  metadata = {
    foo = "bar"
  }
}
