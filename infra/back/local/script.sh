#!/bin/bash
# Config do Git
PATH_ATUAL="${PWD}"
git config --global --add safe.directory $PATH_ATUAL

echo "Configuração do Backend"
echo "terraform {
    backend "s3" {
    bucket         = \"${BACKEND_TFSTATE}\" 
    key            = \"terraform/tfstate/${STAGE_PJ}/${PROJECT}/terraform.tfstate\"
    region         = \"us-east-1\"
    encrypt        = \"true\"
    dynamodb_table = \"${BACKEND_TFSTATE_DYNAMO}\"
  }
}" > backend.tf
