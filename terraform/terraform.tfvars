// Assign values to declared variables with variables.tf

project_name  = "basicwebapp01"
location = "eastasia"
tags = { environment = "dev" }
webappsettings = {
    repositoryUrl = "https://github.com/ts91nz/azure-terraform-staticwebapp01"
    branch = "main"
    repositoryToken = ""
    appLocation = "./webapp"
    apiLocation = ""
}
