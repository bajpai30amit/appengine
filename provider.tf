# Main provider
provider "google" {
  project = local.project-id
  region  = local.region
}

# Where the state is stored
terraform {
  backend "gcs" {
    bucket = "qb-66degrees-tfstate"
    prefix = "terraform_new/state"
  }
}
