#!/bin/bash
# echo "config do git"
# git config --global --add safe.directory '$HOME\/.atlantis\/repos\/$USER_GIT\/$REPO_NAME\/**'

echo "Configuração do Backend"
echo "terraform {
    backend "s3" {
    bucket         = \"${BACKEND_TFSTATE}\" 
    key            = \"terraform/tfstate/teste/terraform.tfstate\"
    region         = \"us-east-1\"
    encrypt        = \"true\"
    dynamodb_table = \"${BACKEND_TFSTATE_DYNAMO}\"
  }
}" > backend.tf