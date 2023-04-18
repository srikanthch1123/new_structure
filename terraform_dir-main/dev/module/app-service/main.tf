# data "azurerm_resource_group" "networkds" {
#   name     = var.resource_group_name_network
# }

# data "azurerm_virtual_network" "vnetds" {
#   name                = var.virtual_network_name
#   resource_group_name = data.azurerm_resource_group.networkds.name
# }

# data "azurerm_subnet" "snet_webin_ds" {
#   name                 = var.subnet_snet_webin_name
#   virtual_network_name = data.azurerm_virtual_network.vnetds.name
#   resource_group_name  = data.azurerm_resource_group.networkds.name
# }

# data "azurerm_subnet" "snet_webout_ds" {
#   name                 = var.subnet_snet_webout_name
#   virtual_network_name = data.azurerm_virtual_network.vnetds.name
#   resource_group_name  = data.azurerm_resource_group.networkds.name
# }

resource "azurerm_resource_group" "app" {
  name = var.resource_group_name_app
  location = var.location
}


resource "azurerm_service_plan" "app" {
  name = var.app_service_plan_name
  location = var.location
  resource_group_name = var.resource_group_name_app
  os_type = "Windows"
  sku_name = var.sku_name
  
  depends_on = [
  azurerm_resource_group.app
  ]
}

# Defined Creation Of Azureapp Service

resource "azurerm_windows_web_app" "dgv_webapp" {
  name                = var.appservice_dgv_webapp_name
  location            = var.location
  resource_group_name = var.resource_group_name_app
  service_plan_id = azurerm_service_plan.app.id

  site_config {}
}

# resource "azurerm_private_endpoint" "endpoint_dgv" {
#   name                = var.private_endpoint_dgv_name
#   location            = azurerm_resource_group.app.location
#   resource_group_name = azurerm_resource_group.app.name
#   subnet_id           = data.azurerm_subnet.snet_webin_ds.id
  

#   private_service_connection {
#     name                           = var.private_connection_dgv_name
#     private_connection_resource_id = azurerm_windows_web_app.dgv_webapp.id
#     subresource_names = ["sites"]
#     is_manual_connection = false
#   }
# }

# # private DNS
# resource "azurerm_private_dns_zone" "dnszone_dgv" {
#   name                = var.dns_zone_dgv_name
#   resource_group_name = azurerm_resource_group.app.name
# }

# #private DNS Link
# resource "azurerm_private_dns_zone_virtual_network_link" "dgv" {
#   name                  = var.dns_zone_virtual_network_link_dgv_name
#   resource_group_name   = azurerm_resource_group.app.name
#   private_dns_zone_name = azurerm_private_dns_zone.dnszone_dgv.name
#   virtual_network_id    = data.azurerm_virtual_network.vnetds.id
#   registration_enabled = false
# }

# resource "azurerm_app_service_virtual_network_swift_connection" "dgv" {
#   app_service_id = azurerm_windows_web_app.dgv_webapp.id
#   subnet_id      = data.azurerm_subnet.snet_webout_ds.id
# }

# resource "azurerm_network_interface" "nic_dgv" {
#   name                = var.network_interface_dgv_name
#   location            = azurerm_resource_group.app.location
#   resource_group_name = azurerm_resource_group.app.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = data.azurerm_subnet.snet_webin_ds.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }





resource "azurerm_windows_web_app" "api_webapp" {
  name                = var.appservice_api_webapp_name
  location            = var.location
  resource_group_name = var.resource_group_name_app
  service_plan_id = azurerm_service_plan.app.id

  site_config {}
}

# resource "azurerm_private_endpoint" "endpoint_api" {
#   name                = var.private_endpoint_api_name
#   location            = azurerm_resource_group.app.location
#   resource_group_name = azurerm_resource_group.app.name
#   subnet_id           = data.azurerm_subnet.snet_webin_ds.id
  

#   private_service_connection {
#     name                           = var.private_connection_api_name
#     private_connection_resource_id = azurerm_windows_web_app.api_webapp.id
#     subresource_names = ["sites"]
#     is_manual_connection = false
#   }
# }

# # private DNS
# resource "azurerm_private_dns_zone" "dnszone_api" {
#   name                = var.dns_zone_api_name
#   resource_group_name = azurerm_resource_group.app.name
# }

# #private DNS Link
# resource "azurerm_private_dns_zone_virtual_network_link" "api" {
#   name                  = var.dns_zone_virtual_network_link_api_name
#   resource_group_name   = azurerm_resource_group.app.name
#   private_dns_zone_name = azurerm_private_dns_zone.dnszone_api.name
#   virtual_network_id    = data.azurerm_virtual_network.vnetds.id
#   registration_enabled = false
# }

# resource "azurerm_app_service_virtual_network_swift_connection" "api" {
#   app_service_id = azurerm_windows_web_app.api_webapp.id
#   subnet_id      = data.azurerm_subnet.snet_webout_ds.id
# }

# resource "azurerm_network_interface" "nic_api" {
#   name                = var.network_interface_api_name
#   location            = azurerm_resource_group.app.location
#   resource_group_name = azurerm_resource_group.app.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = data.azurerm_subnet.snet_webin_ds.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }




resource "azurerm_windows_web_app" "fcsd_webapp" {
  name                = var.appservice_fcsd_webapp_name
  location            = var.location
  resource_group_name = var.resource_group_name_app
  service_plan_id = azurerm_service_plan.app.id

  site_config {}
}

# resource "azurerm_private_endpoint" "endpoint_fcsd" {
#   name                = var.private_endpoint_fcsd_name
#   location            = azurerm_resource_group.app.location
#   resource_group_name = azurerm_resource_group.app.name
#   subnet_id           = data.azurerm_subnet.snet_webin_ds.id
  

#   private_service_connection {
#     name                           = var.private_connection_fcsd_name
#     private_connection_resource_id = azurerm_windows_web_app.fcsd_webapp.id
#     subresource_names = ["sites"]
#     is_manual_connection = false
#   }
# }

# # private DNS
# resource "azurerm_private_dns_zone" "dnszone_fcsd" {
#   name                = var.dns_zone_fcsd_name
#   resource_group_name = azurerm_resource_group.app.name
# }

# #private DNS Link
# resource "azurerm_private_dns_zone_virtual_network_link" "fcsd" {
#   name                  = var.dns_zone_virtual_network_link_fcsd_name
#   resource_group_name   = azurerm_resource_group.app.name
#   private_dns_zone_name = azurerm_private_dns_zone.dnszone_fcsd.name
#   virtual_network_id    = data.azurerm_virtual_network.vnetds.id
#   registration_enabled = false
# }

# resource "azurerm_app_service_virtual_network_swift_connection" "fcsd" {
#   app_service_id = azurerm_windows_web_app.fcsd_webapp.id
#   subnet_id      = data.azurerm_subnet.snet_webout_ds.id
# }

# resource "azurerm_network_interface" "nic_fcsd" {
#   name                = var.network_interface_fcsd_name
#   location            = azurerm_resource_group.app.location
#   resource_group_name = azurerm_resource_group.app.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = data.azurerm_subnet.snet_webin_ds.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }




resource "azurerm_windows_web_app" "lpa_webapp" {
  name                = var.appservice_lpa_webapp_name
  location            = var.location
  resource_group_name = var.resource_group_name_app
  service_plan_id = azurerm_service_plan.app.id

  site_config {}
}

# resource "azurerm_private_endpoint" "endpoint_lpa" {
#   name                = var.private_endpoint_lpa_name
#   location            = azurerm_resource_group.app.location
#   resource_group_name = azurerm_resource_group.app.name
#   subnet_id           = data.azurerm_subnet.snet_webin_ds.id
  

#   private_service_connection {
#     name                           = var.private_connection_lpa_name
#     private_connection_resource_id = azurerm_windows_web_app.lpa_webapp.id
#     subresource_names = ["sites"]
#     is_manual_connection = false
#   }
# }

# # private DNS
# resource "azurerm_private_dns_zone" "dnszone_lpa" {
#   name                = var.dns_zone_lpa_name
#   resource_group_name = azurerm_resource_group.app.name
# }

# #private DNS Link
# resource "azurerm_private_dns_zone_virtual_network_link" "lpa" {
#   name                  = var.dns_zone_virtual_network_link_lpa_name
#   resource_group_name   = azurerm_resource_group.app.name
#   private_dns_zone_name = azurerm_private_dns_zone.dnszone_lpa.name
#   virtual_network_id    = data.azurerm_virtual_network.vnetds.id
#   registration_enabled = false
# }

# resource "azurerm_app_service_virtual_network_swift_connection" "lpa" {
#   app_service_id = azurerm_windows_web_app.lpa_webapp.id
#   subnet_id      = data.azurerm_subnet.snet_webout_ds.id
# }

# resource "azurerm_network_interface" "nic_lpa" {
#   name                = var.network_interface_lpa_name
#   location            = azurerm_resource_group.app.location
#   resource_group_name = azurerm_resource_group.app.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = data.azurerm_subnet.snet_webin_ds.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }





resource "azurerm_windows_web_app" "mzsa_webapp" {
  name                = var.appservice_mzsa_webapp_name
  location            = var.location
  resource_group_name = var.resource_group_name_app
  service_plan_id = azurerm_service_plan.app.id

  site_config {}
}

# resource "azurerm_private_endpoint" "endpoint_mzsa" {
#   name                = var.private_endpoint_mzsa_name
#   location            = azurerm_resource_group.app.location
#   resource_group_name = azurerm_resource_group.app.name
#   subnet_id           = data.azurerm_subnet.snet_webin_ds.id
  

#   private_service_connection {
#     name                           = var.private_connection_mzsa_name
#     private_connection_resource_id = azurerm_windows_web_app.mzsa_webapp.id
#     subresource_names = ["sites"]
#     is_manual_connection = false
#   }
# }

# # private DNS
# resource "azurerm_private_dns_zone" "dnszone_mzsa" {
#   name                = var.dns_zone_mzsa_name
#   resource_group_name = azurerm_resource_group.app.name
# }

# #private DNS Link
# resource "azurerm_private_dns_zone_virtual_network_link" "mzsa" {
#   name                  = var.dns_zone_virtual_network_link_mzsa_name
#   resource_group_name   = azurerm_resource_group.app.name
#   private_dns_zone_name = azurerm_private_dns_zone.dnszone_mzsa.name
#   virtual_network_id    = data.azurerm_virtual_network.vnetds.id
#   registration_enabled = false
# }

# resource "azurerm_app_service_virtual_network_swift_connection" "mzsa" {
#   app_service_id = azurerm_windows_web_app.mzsa_webapp.id
#   subnet_id      = data.azurerm_subnet.snet_webout_ds.id
# }

# resource "azurerm_network_interface" "nic_mzsa" {
#   name                = var.network_interface_mzsa_name
#   location            = azurerm_resource_group.app.location
#   resource_group_name = azurerm_resource_group.app.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = data.azurerm_subnet.snet_webin_ds.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }





resource "azurerm_windows_web_app" "nwp_webapp" {
  name                = var.appservice_nwp_webapp_name
  location            = var.location
  resource_group_name = var.resource_group_name_app
  service_plan_id = azurerm_service_plan.app.id

  site_config {}
}

# resource "azurerm_private_endpoint" "endpoint_nwp" {
#   name                = var.private_endpoint_nwp_name
#   location            = azurerm_resource_group.app.location
#   resource_group_name = azurerm_resource_group.app.name
#   subnet_id           = data.azurerm_subnet.snet_webin_ds.id
  

#   private_service_connection {
#     name                           = var.private_connection_nwp_name
#     private_connection_resource_id = azurerm_windows_web_app.nwp_webapp.id
#     subresource_names = ["sites"]
#     is_manual_connection = false
#   }
# }

# # private DNS
# resource "azurerm_private_dns_zone" "dnszone_nwp" {
#   name                = var.dns_zone_nwp_name
#   resource_group_name = azurerm_resource_group.app.name
# }

# #private DNS Link
# resource "azurerm_private_dns_zone_virtual_network_link" "nwp" {
#   name                  = var.dns_zone_virtual_network_link_nwp_name
#   resource_group_name   = azurerm_resource_group.app.name
#   private_dns_zone_name = azurerm_private_dns_zone.dnszone_nwp.name
#   virtual_network_id    = data.azurerm_virtual_network.vnetds.id
#   registration_enabled = false
# }

# resource "azurerm_app_service_virtual_network_swift_connection" "nwp" {
#   app_service_id = azurerm_windows_web_app.nwp_webapp.id
#   subnet_id      = data.azurerm_subnet.snet_webout_ds.id
# }

# resource "azurerm_network_interface" "nic_nwp" {
#   name                = var.network_interface_nwp_name
#   location            = azurerm_resource_group.app.location
#   resource_group_name = azurerm_resource_group.app.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = data.azurerm_subnet.snet_webin_ds.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }





resource "azurerm_windows_web_app" "zhrz_webapp" {
  name                = var.appservice_zhrz_webapp_name
  location            = var.location
  resource_group_name = var.resource_group_name_app
  service_plan_id = azurerm_service_plan.app.id

  site_config {}
}

# resource "azurerm_private_endpoint" "endpoint_zhrz" {
#   name                = var.private_endpoint_zhrz_name
#   location            = azurerm_resource_group.app.location
#   resource_group_name = azurerm_resource_group.app.name
#   subnet_id           = data.azurerm_subnet.snet_webin_ds.id
  

#   private_service_connection {
#     name                           = var.private_connection_zhrz_name
#     private_connection_resource_id = azurerm_windows_web_app.zhrz_webapp.id
#     subresource_names = ["sites"]
#     is_manual_connection = false
#   }
# }

# # private DNS
# resource "azurerm_private_dns_zone" "dnszone_zhrz" {
#   name                = var.dns_zone_zhrz_name
#   resource_group_name = azurerm_resource_group.app.name
# }

# #private DNS Link
# resource "azurerm_private_dns_zone_virtual_network_link" "zhrz" {
#   name                  = var.dns_zone_virtual_network_link_zhrz_name
#   resource_group_name   = azurerm_resource_group.app.name
#   private_dns_zone_name = azurerm_private_dns_zone.dnszone_zhrz.name
#   virtual_network_id    = data.azurerm_virtual_network.vnetds.id
#   registration_enabled = false
# }

# resource "azurerm_app_service_virtual_network_swift_connection" "zhrz" {
#   app_service_id = azurerm_windows_web_app.zhrz_webapp.id
#   subnet_id      = data.azurerm_subnet.snet_webout_ds.id
# }

# resource "azurerm_network_interface" "nic_zhrz" {
#   name                = var.network_interface_zhrz_name
#   location            = azurerm_resource_group.app.location
#   resource_group_name = azurerm_resource_group.app.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = data.azurerm_subnet.snet_webin_ds.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }

