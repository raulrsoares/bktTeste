terraform {
    backend "s3" {
    bucket         = "BUCKET_NAME" 
    key            = "terraform/tfstate/teste/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = "true"
    dynamodb_table = "TABLE_DYNAMO"
  }
}