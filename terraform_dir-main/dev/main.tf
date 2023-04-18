# module "network_main" {
#   source = "./module/network_main"
#   resource_group_name_network = var.resource_group_name_network
#   location = var.location
#   virtual_network_name = var.virtual_network_name
#   vnet_address_space = var.vnet_address_space
# }

module "network" {
  source = "./module/network"
  resource_group_name_network = var.resource_group_name_network
  location = var.location
  virtual_network_name = var.virtual_network_name
  vnet_address_space = var.vnet_address_space

  # subnet_name = var.subnet_name
  # subnet_address_prefixes = var.subnet_address_prefixes
  # for_each = var.subnet_list
  # subnet_name = each.value["subnet_name"]
  # subnet_address_prefixes = each.value["subnet_address_prefixes"]

  route_table_name = var.route_table_name
  network_security_group_name = var.network_security_group_name

  # subnet_delegation = {
  #   app-service-plan = [
  #     {
  #       name    = "Microsoft.Web/serverFarms"
  #       actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
  #     }
  #   ]
  # }

  subnet_snet_webout_name = var.subnet_snet_webout_name
  snet_webout_address_prefixes = var.snet_webout_address_prefixes
  subnet_snet_shared_name = var.subnet_snet_shared_name
  subnet_snet_shared_address_prefixes = var.subnet_snet_shared_address_prefixes
  subnet_snet_webin_name = var.subnet_snet_webin_name
  subnet_snet_webin_address_prefixes = var.subnet_snet_webin_address_prefixes
  subnet_snet_apim_name = var.subnet_snet_apim_name
  subnet_snet_apim_address_prefixes = var.subnet_snet_apim_address_prefixes
}


module "storage" {
  source               = "./module/Storage"
  storage_account_name = var.storage_account_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  # for_each = var.container_names
  # container_names = each.value["container_name"]
  # blob_storage_name = each.value["container_name"]
  blob_storage_dgv_name = var.blob_storage_dgv_name
  blob_storage_fscdinv_name = var.blob_storage_fscdinv_name
  blob_storage_fcsdbp_name = var.blob_storage_fcsdbp_name
  blob_storage_myz_name = var.blob_storage_myz_name
  blob_storage_rwb_name = var.blob_storage_rwb_name
  # virtual_network_name = var.virtual_network_name
  # resource_group_name_network = var.resource_group_name_network
  # subnet_snet_shared_ds_name = var.subnet_snet_shared_ds_name
#   private_endpoint_storage_name = var.private_endpoint_storage_name
#   storage_dns_zone_vnet_link_name = var.storage_dns_zone_vnet_link_name
#   storage_dns_a_record_name = var.storage_dns_a_record_name
#   storage_private_service_connection = var.storage_private_service_connection
}


# module "storage-containers" {
#   source = "./module/storage-containers"
#   storage_account_name = module.storage.storage_account_name
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   for_each = var.container_names
#   container_names = each.value["container_name"]
#   blob_storage_name = each.value["container_name"]

  
  

#   # for_each            = toset(["zgebs-wb-dev-dgv-publicftpblob0198", "zgebs-wb-dev-fscdinv-publicftpblob0198", "zgebs-wb-dev-fcsdbp-publicftpblob0198", "zgebs-wb-dev-myz-publicftpblob0198", "zgebs-wb-dev-rwb-publicftpblob0198"])
#   # storage_account_name                       = each.value[storage_account_name]
# }

module "app-service" {
  source                                     = "./module/app-service" # Getting Path of Appservice Module
  # for_each                                   = var.appservice_list
  # appservice_name                            = each.value["appservice_name"]
  # app_service_plan_name                      = each.value["app_service_plan_name"]
  appservice_dgv_webapp_name   = var.appservice_dgv_webapp_name
  app_service_plan_name        = "plan-1987010878"
  resource_group_name_app      = var.resource_group_name_app
  location                     = var.location
  sku_name                     = var.sku_name
  # service_plan_id = azurerm_service_plan.app.id
#   private_endpoint_dgv_name = var.private_endpoint_dgv_name
#   private_connection_dgv_name = var.private_connection_dgv_name
#   dns_zone_dgv_name = var.dns_zone_dgv_name
#   dns_zone_virtual_network_link_dgv_name = var.dns_zone_virtual_network_link_dgv_name
#   virtual_network_name = var.virtual_network_name
#   resource_group_name_network = var.resource_group_name_network
#   subnet_snet_webin_name = var.subnet_snet_webin_name
#   network_interface_dgv_name = var.network_interface_dgv_name
#   subnet_snet_webout_name = var.subnet_snet_webout_name
  appservice_api_webapp_name = var.appservice_api_webapp_name
#   private_endpoint_api_name = var.private_endpoint_api_name
#   private_connection_api_name = var.private_connection_api_name
#   dns_zone_api_name = var.dns_zone_api_name
#   dns_zone_virtual_network_link_api_name = var.dns_zone_virtual_network_link_api_name
#   network_interface_api_name = var.network_interface_api_name
  appservice_fcsd_webapp_name = var.appservice_fcsd_webapp_name
#   private_endpoint_fcsd_name = var.private_endpoint_fcsd_name
#   private_connection_fcsd_name = var.private_connection_fcsd_name
#   dns_zone_fcsd_name = var.dns_zone_fcsd_name
#   dns_zone_virtual_network_link_fcsd_name = var.dns_zone_virtual_network_link_fcsd_name
#   network_interface_fcsd_name = var.network_interface_fcsd_name
  appservice_lpa_webapp_name = var.appservice_lpa_webapp_name
#   private_endpoint_lpa_name = var.private_endpoint_lpa_name
#   private_connection_lpa_name = var.private_connection_lpa_name
#   dns_zone_lpa_name = var.dns_zone_lpa_name
#   dns_zone_virtual_network_link_lpa_name = var.dns_zone_virtual_network_link_lpa_name
#   network_interface_lpa_name = var.network_interface_lpa_name
  appservice_mzsa_webapp_name = var.appservice_mzsa_webapp_name
#   private_endpoint_mzsa_name = var.private_endpoint_mzsa_name
#   private_connection_mzsa_name = var.private_connection_mzsa_name
#   dns_zone_mzsa_name = var.dns_zone_mzsa_name
#   dns_zone_virtual_network_link_mzsa_name = var.dns_zone_virtual_network_link_mzsa_name
#   network_interface_mzsa_name = var.network_interface_mzsa_name
  appservice_nwp_webapp_name = var.appservice_nwp_webapp_name
#   private_endpoint_nwp_name = var.private_endpoint_nwp_name
#   private_connection_nwp_name = var.private_connection_nwp_name
#   dns_zone_nwp_name = var.dns_zone_nwp_name
#   dns_zone_virtual_network_link_nwp_name = var.dns_zone_virtual_network_link_nwp_name
#   network_interface_nwp_name = var.network_interface_nwp_name
  appservice_zhrz_webapp_name = var.appservice_zhrz_webapp_name
#   private_endpoint_zhrz_name = var.private_endpoint_zhrz_name
#   private_connection_zhrz_name = var.private_connection_zhrz_name
#   dns_zone_zhrz_name = var.dns_zone_zhrz_name
#   dns_zone_virtual_network_link_zhrz_name = var.dns_zone_virtual_network_link_zhrz_name
#   network_interface_zhrz_name = var.network_interface_zhrz_name
}

module "keyvault" {
  source = "./module/keyvault"
  resource_group_name_kv = var.resource_group_name_kv
  location = var.location
  key_vault_name = var.key_vault_name
#   virtual_network_name = var.virtual_network_name
#   resource_group_name_network = var.resource_group_name_network
#   subnet_snet_shared_ds_name = var.subnet_snet_shared_ds_name
#   kv_endpoint_name = var.kv_endpoint_name
#   kv_private_service_connection = var.kv_private_service_connection
#   kv_dns_a_record_name = var.kv_dns_a_record_name
}


# module "function-app" {
#   source = "./module/function-app"
#   for_each = var.function_app_list
#   function_app_name = each.value["function_app_name"]
#   app_service_plan_name = each.value["app_service_plan_name"]
#   resource_group_name_app = var.resource_group_name_app
#   resource_group_name = var.resource_group_name
#   location = var.location
#   sku_name = var.sku_name
#   storage_account_name = var.storage_account_name
# }


module "app-insights" {
  source = "./module/app-insights"
  resource_group_name_app = var.resource_group_name_app
  log_analytics_workspace_name = var.log_analytics_workspace_name
  application_insights_name = var.application_insights_name
  location = var.location
  depends_on = [module.app-service]
}

