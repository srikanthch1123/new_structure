# resource "azurerm_resource_group" "network" {
#   name     = var.resource_group_name_network
#   location = var.location
# }

# resource "azurerm_virtual_network" "vnet" {
#   name                = var.virtual_network_name
#   address_space       = var.vnet_address_space
#   location            = azurerm_resource_group.network.location
#   resource_group_name = azurerm_resource_group.network.name
# }

