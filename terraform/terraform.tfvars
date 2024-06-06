// Assign values to declared variables with variables.tf

project_name  = "basicwebapp01"
location = "eastasia"
tags = { environment = "dev" }
webappsettings = {
    repositoryUrl = "https://github.com/tim-shand/azure-terraform-staticwebapp01"
    branch = "main"
    appLocation = "./webapp"
    apiLocation = ""
}
