resource "azurerm_servicebus_namespace" "upload_queue_ns" {                     
  name = "upload-queue-ns"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  sku = "Standard"

  tags = {
    environment = "testing"
  }
}

resource "azurerm_servicebus_queue" "upload_queue" {                            #Changed to 2.56.0
  name = "upload-queue"
  namespace_name = azurerm_servicebus_namespace.upload_queue_ns.name
  resource_group_name = azurerm_resource_group.rg.name

  enable_partitioning = true
}