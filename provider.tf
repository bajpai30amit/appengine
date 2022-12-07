# Main provider
provider "google" {
  project = local.project-id
  region  = local.region
}

# Where the state is stored
terraform {
  backend "gcs" {
    bucket = "test_amit_quick"
    prefix = "terraform_new/state"
  }
}
