resource "azurerm_storage_account" "upload_storage_account" {                    
  name = "uploadstorageaccount"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  account_tier = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "testing"
  }
}

resource "azurerm_storage_container" "upload_container" {
  name = "upload-container"
  storage_account_name = azurerm_storage_account.upload_storage_account.name
  container_access_type = "blob"
}