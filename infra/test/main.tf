terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
    features {}
  # Configuration options
}



module "rg" {
    source = "../../rg"
    rg     = var.rg
}
