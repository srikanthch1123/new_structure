# data "azurerm_resource_group" "networkds" {
#   name     = var.resource_group_name_network
# }

# data "azurerm_virtual_network" "vnetds" {
#   name                = var.virtual_network_name
#   resource_group_name = data.azurerm_resource_group.networkds.name
# }

# data "azurerm_subnet" "snet_apim_ds" {
#   name                 = var.subnet_snet_apim_ds_name
#   virtual_network_name = data.azurerm_virtual_network.vnetds.name
#   resource_group_name  = data.azurerm_resource_group.networkds.name
# }

resource "azurerm_resource_group" "apim" {
  name     = var.resource_group_name_apim
  location = var.location
}

resource "azurerm_api_management" "apim" {
  name                = var.apim_name
  location            = azurerm_resource_group.apim.location
  resource_group_name = azurerm_resource_group.apim.name
  publisher_name      = var.company_name
  publisher_email     = var.publisher_email

  sku_name = var.sku_name_apim
}

# resource "azurerm_private_endpoint" "endpoint_apim" {
#   name                = var.private_endpoint_apim_name
#   resource_group_name = azurerm_resource_group.apim.name
#   location            = azurerm_resource_group.apim.location
#   subnet_id           = data.azurerm_subnet.snet_apim_ds.id
#   private_service_connection {
#     name                           = var.apim_private_service_connection
#     private_connection_resource_id = azurerm_api_management.apim.id
#     is_manual_connection           = false
#     subresource_names = ["Gateway"]
#   }
# }
# resource "azurerm_private_dns_zone" "dns_zone_apim" {
#   name                = "privatelink.blob.core.windows.net"
#   resource_group_name = azurerm_resource_group.apim.name
# }
# resource "azurerm_private_dns_zone_virtual_network_link" "network_link" {
#   name                  = var.apim_dns_zone_vnet_link_name
#   resource_group_name   = azurerm_resource_group.apim.name
#   private_dns_zone_name = azurerm_private_dns_zone.dns_zone_apim.name
#   virtual_network_id    = data.azurerm_virtual_network.vnetds.id
# }

# resource "azurerm_private_dns_a_record" "dns_a" {
#   name                = var.apim_dns_a_record_name
#   zone_name           = azurerm_private_dns_zone.dns_zone_apim.name
#   resource_group_name = azurerm_resource_group.apim.name
#   ttl                 = 300
#   records             = [azurerm_private_endpoint.endpoint_apim.private_service_connection.0.private_ip_address]
# }

