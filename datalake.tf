resource "azurerm_resource_group" "datalake" {
  name     = "datalake"
  location = "canadacentral"
}

resource "azurerm_storage_account" "datalake" {
  name                     = "statshackathonmsdec"
  resource_group_name      = azurerm_resource_group.datalake.name
  location                 = azurerm_resource_group.datalake.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = "true"
}

resource "azurerm_storage_data_lake_gen2_filesystem" "datalake" {
  name               = "datalake"
  storage_account_id = azurerm_storage_account.datalake.id

  properties = {
    hello = "aGVsbG8="
  }
}