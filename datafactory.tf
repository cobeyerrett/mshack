resource "azurerm_resource_group" "datafactory" {
  name     = "datafactory"
  location = "canadacentral"
}

resource "azurerm_data_factory" "datafactorymshack" {
  name                = "datafactorystatsmshack"
  location            = "${azurerm_resource_group.datafactory.location}"
  resource_group_name = "${azurerm_resource_group.datafactory.name}"
}