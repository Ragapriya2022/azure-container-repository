resource "azurerm_resource_group" "azurecontainer_rs" {
  name     = "azurecontainer_rs"
  location = "West Europe"
}



resource "azurerm_container_registry" "acr" {
  name                = "containerRegistry1"
  resource_group_name = azurerm_resource_group.azurecontainer_rs.name
  location            = azurerm_resource_group.azurecontainer_rs.location
  sku                 = "Basic"

}