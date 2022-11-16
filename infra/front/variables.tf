variable "region_aws" {
  type        = string
  default     = "us-east-1"
  description = "Região AWS onde serão deployados os recursos"
}

variable "profile_aws" {
  type        = string
  default     = "default"
  description = "Nome do Usúario da Maquina que vai acessar a aws"
}

variable "owner" {
  type        = string
  default     = "raulSoares2"
  description = "Owner das mudanças"
}

variable "stage" {
  type        = string
  default     = "dev"
  description = "stage dos arquivos"
}

variable "app_name" {
  type        = string
  default     = "testeatlantis"
  description = "Nome Global dos recursos"
}

variable "repository_description" {
  type        = string
  default     = "descrição de teste"
  description = "descrição de teste"
}

variable "bucketTeste" {
  type        = string
  default     = "testeguatlantis"
  description = "Nome Global dos recursos"
}
