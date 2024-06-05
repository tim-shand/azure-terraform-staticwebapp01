// Define the Azure Terraform provider and minimum version required in each 'module' file.
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

# Create a new Resource Group to contain the wep app. 
resource "azurerm_resource_group" "rg01" {
  name     = "${var.project_name}-rg"
  location = var.az_location
  tags     = var.az_tags
}

# Create new static web app. 
resource "azurerm_static_web_app" "stwapp01" {
  name                = "${var.project_name}-swa"
  resource_group_name = azurerm_resource_group.rg01.name
  location            = azurerm_resource_group.rg01.location
  sku_tier            = "Free"
  sku_size            = "Free"
  tags                = var.az_tags
}
