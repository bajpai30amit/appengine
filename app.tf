module "app_uscentral" {
  source          = "./modules/app/"
  project_id      = local.project-id
  location        = local.location
  region          = local.region
  app_bucket_name = local.app_bucket_name
}
