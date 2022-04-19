variable "region" {
  description = "the main region"
  type        = string
  default     = "us-central1"
}
variable "zone" {
  description = "the main zone"
  type        = string
  default     = "us-central1-a"
}
variable "project_id" {
  description = "the project ID"
  type        = string
  default     = "qwiklabs-gcp-00-6535036564dc"
}

variable "name" {
  description = "the name of the resource"
  type        = string
  default = "name of resource"
}
