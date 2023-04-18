output "virtual_network_name" {
  description = "Name of the storage account created."
  value       = azurerm_virtual_network.vnet.name
}

output "resource_group_name_network" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.network.name
}