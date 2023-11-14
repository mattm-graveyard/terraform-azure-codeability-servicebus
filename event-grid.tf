resource "azurerm_eventgrid_event_subscription" "upload_subscription" {
  name = "upload-event-subscription"
  scope = azurerm_storage_container.upload_container.id

  service_bus_queue_endpoint_id = azurerm_servicebus_queue.upload_queue.id
  included_event_types = [ "Microsoft.Storage.BlobCreated" ]
}