# Terraform config for creating resource group
############ Best Practice #################
# required_provider block shall always be used 
# for Azure Provider resoruce and version being used
terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~>3.0.0"
    }
  }
}

# configure the Microsoft Azure Provider
provider "azurerm" {
    features {
    }
}
resource "azurerm_resource_group" "demogit" {
  name = "demo-git-rg"
  location = "centralus"
}
resource "azurerm_storage_account" "stgacct" {
  name = "stgacctnv9876"
  resource_group_name = "demo-git-rg"
  location = "centralus"
  account_tier = "Standard"
  account_replication_type = "LRS"
}