// Defines the cloud provider (Azure) configuration.
// Configuration for additonal providers can be added here in separate 'provider' blocks.
provider "azurerm" {
    features {}
    /* 
    # Azure connection details can be stored as variables, however it is not best practice to do so. 
    # It is better to use Azure CLI, or set the details in environment variables. 
    client_id               = "[snip]" // Azure Entra ID application registration ID (service principal).
    client_secret_file_path = "[snip]" // Path to a file containing the application registration client secret. 
    tenant_id               = "[snip]" // Azure tenant ID
    subscription_id         = "[snip]" // Target Azure subscription to work with.
    */
}
