// Define 'input' variables for the other TF files to use.
// Example: Define the default location/region for Azure resources to be created in. 

variable "project_name" {
  description = "Project Name, used for consistent naming methods."
  default = "basicwebapp01"
}

variable "az_location" {
  description = "Azure region in which to create the resources."
  default = "eastasia"
}

variable "az_tags" {
  description = "Tags used in Azure to identify related resources."
  default = { environment = "dev" }
}
