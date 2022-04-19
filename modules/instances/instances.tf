resource "google_compute_instance" "tf-instance-1" {
  name = "tf-instance-1"
  machine_type = "n1-standard-2"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-10-buster-v20220406"
    }
  }
  network_interface {
    network = "tf-vpc-690924"
    subnetwork = "subnet-01"
    access_config {
    }
  }
  allow_stopping_for_update = true
}


resource "google_compute_instance" "tf-instance-2" {
  name = "tf-instance-2"
  machine_type = "n1-standard-2"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-10-buster-v20220406"
    }
  }
  network_interface {
    network = "tf-vpc-690924"
    subnetwork = "subnet-02"
    access_config {
    }
  }
 allow_stopping_for_update = true
}
