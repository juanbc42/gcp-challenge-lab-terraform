terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.45"
    }
  }
    backend "gcs" {
        bucket  = "tf-bucket-739466"
        prefix  = "terraform/state"
    }
}
provider "google" {
    project = var.project_id
    region  = var.region
    zone    = var.zone
}
module "instances" {
  source     = "./modules/instances"
}
module "storage" {
    source = "./modules/storage"
}

module "network" {
  source  = "terraform-google-modules/network/google"
  version = "3.4.0"
  network_name = "tf-vpc-690924"
  project_id = var.project_id
  subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = "us-central1"
        },{
            subnet_name           = "subnet-02"
            subnet_ip             = "10.10.20.0/24"
            subnet_region         = "us-central1"
        }
    ]
}

resource "google_compute_firewall" "tf-firewall" {
    name    = "tf-firewall"
    network = "projects/qwiklabs-gcp-00-6535036564dc/global/networks/tf-vpc-690924"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
    source_ranges = ["0.0.0.0/0"]
    source_tags = ["web"]
}

resource "google_compute_network" "default" {
  name = "test-network"
}