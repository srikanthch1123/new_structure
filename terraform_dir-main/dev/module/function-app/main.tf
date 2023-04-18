# data "azurerm_resource_group" "storageds" {
#   name     = var.resource_group_name
#   # location = var.location
# }

# data "azurerm_resource_group" "appds" {
#   name     = var.resource_group_name_app
#   # location = var.location
# }

# data "azurerm_storage_account" "storageds" {
#   name                     = var.storage_account_name
#   resource_group_name      = data.azurerm_resource_group.storageds.name
#   # location                 = var.location
#   # account_tier             = "Standard"
#   # account_replication_type = "GRS"
# }

# ß

resource "azurerm_windows_function_app" "example" {
  name                = var.function_app_name
  resource_group_name = var.resource_group_name_app
  location            = var.location

  storage_account_name       = var.storage_account_name
  # storage_account_access_key = data.azurerm_storage_account.storageds.name.primary_access_key
  service_plan_id            = var.service_plan_id

  site_config {}
}