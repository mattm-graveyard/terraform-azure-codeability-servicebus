output "storage_account_id" {
  value = azurerm_storage_account.upload_storage_account.id
  sensitive = true
}

output "service_bus_id" {
  value = azurerm_servicebus_namespace.upload_queue_ns.id
  sensitive = true
}

output "event_grid_id" {
  value = azurerm_eventgrid_event_subscription.upload_subscription.id
  sensitive = true
}