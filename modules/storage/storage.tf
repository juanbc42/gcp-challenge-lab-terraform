resource "google_storage_bucket" "tf-bucket-739466" {
    name = "tf-bucket-739466"
    project = var.project_id
    location = "US"
    force_destroy = true
    uniform_bucket_level_access = true 
}