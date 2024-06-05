// Includes output value definitions. 
output "webapp_url" {
  value = azurerm_static_web_app.stwapp01.default_host_name
}

// Output the API string (senstive value)
// To view: terraform output -raw webapp_api
output "webapp_api" {
  value = azurerm_static_web_app.stwapp01.api_key
  sensitive = true
}
