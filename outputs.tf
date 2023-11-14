output "storage_account_id" {
  value = azurerm_storage_account.upload_storage_account.id
}

output "service_bus_id" {
  value = azurerm_servicebus_namespace.upload_queue_ns.id
}

output "event_grid_id" {
  value = azurerm_eventgrid_event_subscription.upload_subscription.id
}