// Define the Azure Terraform provider and minimum version required.
// During the inital Terraform "init", Terraform will download the required providers. 
terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = ">= 3.106.0" # Allows as minimum or later. 
        }
        // Additonal providers can be added here if required.
    }
}

// Define 'local' variables used by other resource blocks below. 
// Use 'variables.tf' file to define input variables. 
locals {
  project_name        = "basicwebapp01" // Use this to define a consistant naming method for resources.
  az_location         = "eastasia" // Define the default location/region for Azure resources to be created in. 
  az_tags             = {environment = "dev"} // Define collection of tags that should be assigned to resources. 
}

# Create a new Resource Group to contain the wep app. 
resource "azurerm_resource_group" "rg01" {
  name     = "${local.project_name}-rg"
  location = local.az_location
  tags = local.az_tags
}

# Create new static web app. 
resource "azurerm_static_web_app" "stwapp01" {
  name                = "${local.project_name}-stapp"
  resource_group_name = azurerm_resource_group.rg01.name
  location            = azurerm_resource_group.rg01.location
  sku_tier            = "Free"
  sku_size            = "Free"
  tags                = local.az_tags
}
