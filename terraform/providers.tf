// Defines the cloud provider (Azure) configuration.
// Configuration for additonal providers can be added here in separate 'provider' blocks.
provider "azurerm" {
  features {}
  /* 
    # Azure connection details can be stored as variables, however it is not best practice to do so. 
    # It is better to use Azure CLI, or set the connection details using environment variables. 
    client_id               = "[snip]" // Azure Entra ID application registration ID (service principal).
    client_secret_file_path = "[snip]" // Path to a file containing the application registration client secret. 
    tenant_id               = "[snip]" // Azure tenant ID
    subscription_id         = "[snip]" // Target Azure subscription to work with.
    
    # PowerShell
    $env:ARM_CLIENT_ID = "d836f655-984f-405b-9c9c-54724947ae9c"
    $env:ARM_CLIENT_SECRET = "RUr8Q~Xtxtu-DLQwZJRuBrgyeckxGlKgbk8DyaSz"
    $env:ARM_TENANT_ID = "5e068550-8d94-4aca-8f9f-a71c5b9a0c19"
    $env:ARM_SUBSCRIPTION_ID = "9f3de13e-bb30-4183-ad65-50d4a0ab162e"

    # To view
    gci env:ARM_*
    
    */
}
