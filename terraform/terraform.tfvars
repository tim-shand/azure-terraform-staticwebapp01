// Assign values to declared variables with variables.tf

project_name  = "basicwebapp01"
location = "eastasia"
tags = { environment = "dev" }
webappsettings = {
    repositoryUrl = "https://github.com/ts91nz/azure-terraform-staticwebapp01"
    branch = "main"
    repositoryToken = "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"
    appLocation = "./webapp"
    apiLocation = ""
}
