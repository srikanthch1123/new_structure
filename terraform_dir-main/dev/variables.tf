# network main

variable "resource_group_name_network" {}

variable "location" {}

variable "virtual_network_name" {}

variable "vnet_address_space" {}


# network

variable "route_table_name" {}

variable "network_security_group_name" {}

variable "subnet_snet_webout_name" {}

variable "snet_webout_address_prefixes" {}

variable "subnet_snet_shared_name" {}

variable "subnet_snet_shared_address_prefixes" {}

variable "subnet_snet_webin_name" {}

variable "subnet_snet_webin_address_prefixes" {}

variable "subnet_snet_apim_name" {}

variable "subnet_snet_apim_address_prefixes" {}



# storage

variable "resource_group_name" {}

variable "storage_account_name" {}

# variable "subnet_snet_shared_ds_name" {}

# variable "private_endpoint_storage_name" {}

# variable "storage_dns_zone_vnet_link_name" {}

# variable "storage_dns_a_record_name" {}

# variable "storage_private_service_connection" {}

variable "blob_storage_dgv_name" {}
variable "blob_storage_fscdinv_name" {}
variable "blob_storage_fcsdbp_name" {}
variable "blob_storage_myz_name" {}
variable "blob_storage_rwb_name" {}


# storage containers

# variable "container_names" {
#   type = any
# }





# appservice


variable "resource_group_name_app" {}

variable "appservice_dgv_webapp_name" {}

variable "app_service_plan_name" {}

variable "sku_name" {}

# variable "private_connection_dgv_name" {}

# variable "private_endpoint_dgv_name" {}

# variable "appservice_list" {
#   type = any
# }

# variable "dns_zone_dgv_name" {}

# variable "dns_zone_virtual_network_link_dgv_name" {}

# variable "virtual_network_name" {}

# variable "resource_group_name_network" {}

# variable "subnet_snet_webin_name" {}

# variable "network_interface_dgv_name" {}

# variable "subnet_snet_webout_name" {}


variable "appservice_api_webapp_name" {}

# variable "private_endpoint_api_name" {}

# variable "private_connection_api_name" {}

# variable "dns_zone_api_name" {}

# variable "dns_zone_virtual_network_link_api_name" {}

# variable "network_interface_api_name" {}



variable "appservice_fcsd_webapp_name" {}

# variable "private_endpoint_fcsd_name" {}

# variable "private_connection_fcsd_name" {}

# variable "dns_zone_fcsd_name" {}

# variable "dns_zone_virtual_network_link_fcsd_name" {}

# variable "network_interface_fcsd_name" {}


variable "appservice_lpa_webapp_name" {}

# variable "private_endpoint_lpa_name" {}

# variable "private_connection_lpa_name" {}

# variable "dns_zone_lpa_name" {}

# variable "dns_zone_virtual_network_link_lpa_name" {}

# variable "network_interface_lpa_name" {}


variable "appservice_mzsa_webapp_name" {}

# variable "private_endpoint_mzsa_name" {}

# variable "private_connection_mzsa_name" {}

# variable "dns_zone_mzsa_name" {}

# variable "dns_zone_virtual_network_link_mzsa_name" {}

# variable "network_interface_mzsa_name" {}



variable "appservice_nwp_webapp_name" {}

# variable "private_endpoint_nwp_name" {}

# variable "private_connection_nwp_name" {}

# variable "dns_zone_nwp_name" {}

# variable "dns_zone_virtual_network_link_nwp_name" {}

# variable "network_interface_nwp_name" {}




variable "appservice_zhrz_webapp_name" {}

# variable "private_endpoint_zhrz_name" {}

# variable "private_connection_zhrz_name" {}

# variable "dns_zone_zhrz_name" {}

# variable "dns_zone_virtual_network_link_zhrz_name" {}

# variable "network_interface_zhrz_name" {}


# keyvault

variable "resource_group_name_kv" {}

variable "key_vault_name" {}

# variable "kv_endpoint_name" {}

# variable "kv_private_service_connection" {}

# variable "kv_dns_a_record_name" {}

# variable "virtual_network_name" {}

# variable "resource_group_name_network" {}

# variable "subnet_snet_shared_ds_name" {}


# functionapp


# variable "resource_group_name" {}

# variable "app_service_plan_name" {}

# variable "sku_name" {}

# variable "function_app_name" {}

# variable "function_app_list" {
#   type = any
# }

# variable "service_plan_id" {
  
# }



# app insights


variable "log_analytics_workspace_name" {}
variable "application_insights_name" {}




