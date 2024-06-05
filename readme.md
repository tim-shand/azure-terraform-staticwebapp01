# Azure Static Web App: Example 01
**_Basic guide to deploying a static web app in Azure using Terraform and Github Actions._**

## Overview
- Create an Azure resource group.
- Create Static Web App. 

## Requirements
- Azure CLI installed. 
- Existing Azure service principal ([guide here](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret)).    

## Execution
```
# Initialize Terraform
> terraform init

# Validate Terraform configuration files
> terraform validate

# Format Terraform configuration files
> terraform fmt

# Review the terraform plan
> terraform plan 

# Create Resources
> terraform apply -auto-approve
```