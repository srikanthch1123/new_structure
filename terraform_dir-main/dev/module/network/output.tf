output "subnet_snet_shared_name" {
  description = "subnet snet shared name"
  value       = azurerm_subnet.snet_shared.name
}

output "subnet_snet_webout_name" {
  description = "subnet snet webout name"
  value       = azurerm_subnet.snet_webout.name
}

output "subnet_snet_webin_name" {
  description = "subnet snet webin name"
  value       = azurerm_subnet.snet_webin.name
}

output "subnet_snet_apim_name" {
  description = "subnet snet apim name"
  value       = azurerm_subnet.snet_apim.name
}