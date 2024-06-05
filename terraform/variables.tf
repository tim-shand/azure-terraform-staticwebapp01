// Define 'input' variables for the other TF files to use.
// Example: Define the default location/region for Azure resources to be created in. 

variable "project_name" {
    type        = string
    nullable    = false
    description = "Project Name, used for consistent naming methods."
}

variable "location" {
    type        = string
    nullable    = false
    description = "Azure region in which to create the resources."
}

variable "tags" {
    type        = map(string)
    nullable    = true
    description = "Tags used in Azure to identify related resources."
}

variable "webappsettings" {
    type        = map(string)
    nullable    = true
    description = "Define Azure web app settings."
}
