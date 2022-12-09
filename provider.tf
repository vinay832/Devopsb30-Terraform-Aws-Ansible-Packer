terraform {
  required_version = "<= 1.3.14" #Forcing which version of Terraform needs to be used
  required_providers {
    aws = {
      version = "<= 5.0.0" #Forcing which version of plugin needs to be used.
      source  = "hashicorp/aws"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0, < 4.0"
    }
  }
}
provider "aws" {
  region = var.aws_region
}
# https://medium.com/scalereal/how-to-use-multiple-aws-providers-in-a-terraform-project-672da074c3eb
provider "aws" {
  alias  = "ohio"
  region = "us-east-2"
}