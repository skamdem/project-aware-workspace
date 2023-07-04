provider "aws" {
  region = var.region
}

locals {
  environment_name = terraform.workspace //dev/staging/production  
}