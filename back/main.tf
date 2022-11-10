terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }  
  }  
  required_version = ">= 0.14.9"

  backend "s3" {
    bucket = "tf-dev-backend-tfstate-infras"
    key    = "terraform/tfstate/teste/terraform.tfstate"
    region = "us-east-1"
    encrypt = "true"
    dynamodb_table = "tf-dynamo-dev-backend-tfstate-infras"
  }
}
  
provider "aws" {
  region  = var.region_aws
  profile = var.profile_aws

  default_tags {
    tags = {
      OWNER = var.owner
      STAGE = var.stage
    }
  }
}
