terraform {
  backend "s3" {
    bucket         = "tf-dev-backend-tfstate-infras"
    key            = "terraform/tfstate/teste/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = "true"
    dynamodb_table = "tf-dynamo-dev-backend-tfstate-infras"
  }
}
 