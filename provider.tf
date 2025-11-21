terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>4.52"
    }
    aws = {
      source = "hashicorp/aws"
      version = "6.20.0"
    }
  }
}

provider "azurerm" {
 features {
 }
 subscription_id = "2df30ff1-915d-4d35-974a-3d3155aaa413"
}


provider "aws" {
  # Configuration options
}