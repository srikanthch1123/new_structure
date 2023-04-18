# data "azurerm_resource_group" "storageds" {
#   name     = var.resource_group_name
#   # location = var.location
# }

# data "azurerm_storage_account" "storageds" {
#   name                     = var.storage_account_name
#   resource_group_name      = data.azurerm_resource_group.storageds.name
#   # location                 = var.location
#   # account_tier             = "Standard"
#   # account_replication_type = "GRS"
# }

# resource "azurerm_storage_container" "storage" {
#   name                  = var.blob_storage_name
#   storage_account_name  = data.azurerm_storage_account.storageds.name
#   container_access_type = "blob"
# }

# resource "azurerm_storage_blob" "blobstorage" {
#   name                   = "Blob"
#   storage_account_name   = data.azurerm_storage_account.storageds.name
#   storage_container_name = azurerm_storage_container.storage.name
#   type                   = "Block"
#   # source                 = "some-local-file.zip"
# }









