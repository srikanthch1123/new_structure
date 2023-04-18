# data "azurerm_resource_group" "appds" {
#   name     = var.resource_group_name_app
#   # location = var.location
# }

resource "azurerm_log_analytics_workspace" "logaw" {
  name                = var.log_analytics_workspace_name
  location            = var.location
  resource_group_name = var.resource_group_name_app
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_application_insights" "appinsights" {
  name                = var.application_insights_name
  location            = var.location
  resource_group_name = var.resource_group_name_app
  workspace_id        = azurerm_log_analytics_workspace.logaw.id
  application_type    = "web"
}