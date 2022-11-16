terraform {
  backend "s3" {
    bucket         = "BUCKET"
    key            = "PATH"
    region         = "us-east-1"
    encrypt        = "true"
    dynamodb_table = "DYNAMO"
  }
}
 