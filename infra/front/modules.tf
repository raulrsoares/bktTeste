# module "bucket" {
#   source = "./modules/bucket"

#   global_stage = var.stage
#   global_app_name = var.app_name
#   bucketTeste = var.bucketTeste
# }   

module "codecommit" {
  source = "./modules/codecommit"

  global_app_name        = var.app_name
  repository_description = var.repository_description
}
