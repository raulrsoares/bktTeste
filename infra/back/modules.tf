module "bucket" {
  source = "./modules/bucket"

  global_stage = var.stage
  global_app_name = var.app_name
  bucketTeste = var.bucketTeste
}    