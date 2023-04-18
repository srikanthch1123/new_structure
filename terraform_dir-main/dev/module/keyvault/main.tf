data "azurerm_client_config" "current" {}

# data "azurerm_resource_group" "networkds" {
#   name     = var.resource_group_name_network
# }

# data "azurerm_virtual_network" "vnetds" {
#   name                = var.virtual_network_name
#   resource_group_name = data.azurerm_resource_group.networkds.name
# }

# data "azurerm_subnet" "snet_shared_ds" {
#   name                 = var.subnet_snet_shared_ds_name
#   virtual_network_name = data.azurerm_virtual_network.vnetds.name
#   resource_group_name  = data.azurerm_resource_group.networkds.name
# }

resource "azurerm_resource_group" "keyvault" {
  name     = var.resource_group_name_kv
  location = var.location
}

resource "azurerm_key_vault" "kv" {
  name                        = var.key_vault_name
  location                    = azurerm_resource_group.keyvault.location
  resource_group_name         = azurerm_resource_group.keyvault.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  # soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get", "Create", "Delete", "Encrypt", "Backup", "List", "Recover", "Update",
    ]

    secret_permissions = [
      "Get", "Backup", "Delete", "List", "Purge", "Recover", "Restore", "Set", 
    ]

    storage_permissions = [
      "Get", "Delete", "Backup", "List", "Update",
    ]
  }
}

# resource "azurerm_private_endpoint" "kv_endpoint" {
#   name                = var.kv_endpoint_name
#   location            = azurerm_resource_group.keyvault.location
#   resource_group_name = azurerm_resource_group.keyvault.name
#   subnet_id           = data.azurerm_subnet.snet_shared_ds.id

#   private_service_connection {
#     name                           = var.kv_private_service_connection
#     private_connection_resource_id = azurerm_key_vault.kv.id
#     is_manual_connection           = false
#     subresource_names = ["Vault"]
#   }
# }
# resource "azurerm_private_dns_zone" "dns_kv" {
#   name                = "privatelink.vaultcore.azure.net"
#   resource_group_name = azurerm_resource_group.keyvault.name
# }
# resource "azurerm_private_dns_a_record" "kv_dns_a_record" {
#   name                = var.kv_dns_a_record_name
#   zone_name           = azurerm_private_dns_zone.dns_kv.name
#   resource_group_name = azurerm_resource_group.keyvault.name
#   ttl                 = 300
#   records             = ["10.0.2.22"]
# }

# output kv_private_ip {
#   value =   ["10.0.2.22"]
# }
