#################################
# network main
##################################


resource_group_name_network = "zgebs-workbench-dev-neu-vnet-rg"
location = "north europe"
virtual_network_name = "workbench-dev-neu-vnet"
vnet_address_space = ["10.0.0.0/16"]

#################################
# network
##################################

# resource_group_name_network = "zgebs-workbench-dev-neu-vnet-rg"
# location = "north europe"
# virtual_network_name = "workbench-dev-neu-vnet"
# vnet_address_space = ["10.0.0.0/16"]
subnet_snet_shared_name = "zgebs-wb-dev-snet-shared-ne01"
subnet_snet_shared_address_prefixes = ["10.0.2.0/24"]
subnet_snet_webout_name = "zgebs-wb-dev-snet-webout-ne01"
snet_webout_address_prefixes = ["10.0.5.0/24"]
subnet_snet_webin_name = "zgebs-wb-dev-snet-webin-ne01"
subnet_snet_webin_address_prefixes = ["10.0.4.0/24"]
subnet_snet_apim_name = "zgebs-wb-dey-snet-apim-ne01"
subnet_snet_apim_address_prefixes = ["10.0.0.0/24"]
route_table_name = "workbench-dev-neu-vnet-rt1"
network_security_group_name = "workbench-dev-neu-vnet-nsg1"


#################################
# storage
##################################

resource_group_name  = "zgebs-workbench-dev-storage-rg"
# location             = "north europe"
storage_account_name = "zgbswbdevstorage9897"

# virtual_network_name = "workbench-dev-neu-vnet"

# subnet_snet_shared_ds_name = "zgebs-wb-dev-snet-shared-ne01"

# resource_group_name_network = "zgebs-workbench-dev-neu-vnet-rg"

# private_endpoint_storage_name = "zgebs-wb-dev-shrdstg-pr-198"

# storage_dns_zone_vnet_link_name = "dns-zone-vnet-link-name"

# storage_dns_a_record_name = "dns-a-record-002"

# storage_private_service_connection = "service-connection-stg-001"
blob_storage_dgv_name = "zgebs-wb-dev-dgv-publicftpblob023"
blob_storage_fscdinv_name = "zgebs-wb-dev-fscdinv-publicftpblob023"
blob_storage_fcsdbp_name = "zgebs-wb-dev-fcsdbp-publicftpblob023"
blob_storage_myz_name = "zgebs-wb-dev-myz-publicftpblob023"
blob_storage_rwb_name = "zgebs-wb-dev-rwb-publicftpblob023"


#################################
# storage containers
##################################

# resource_group_name  = "zgebs-workbench-dev-storage-rg"
# location             = "north europe"
# storage_account_name = "zgbswbdevstorage1123"

# container_names = {
#     blob_container_1 = {
#         "container_name"          = "zgebs-wb-dev-dgv-publicftpblob0198"
#         "storage_account_name"     = "zgbswbdevstorage1123"
#     }
#     blob_container_2 = {
#         "container_name"          = "zgebs-wb-dev-fscdinv-publicftpblob0198"
#         "storage_account_name"     = "zgbswbdevstorage1123"
#     }
#     blob_container_3 = {
#         "container_name"          = "zgebs-wb-dev-fcsdbp-publicftpblob0198"
#         "storage_account_name"     = "zgbswbdevstorage1123"
#     }
#     blob_container_4 = {
#         "container_name"          = "zgebs-wb-dev-myz-publicftpblob0198"
#         "storage_account_name"     = "zgbswbdevstorage1123"
#     }
#     blob_container_5 = {
#         "container_name"          = "zgebs-wb-dev-rwb-publicftpblob0198"
#         "storage_account_name"     = "zgbswbdevstorage1123"
#     }
# }



#################################
# app services
##################################

resource_group_name_app = "zgebs-workbench-dev-application-rg"
# location            = "north europe"
sku_name            = "P1v2"
appservice_dgv_webapp_name  = "zgebs-wb-dev-dgv-wapp-ne-9897"
app_service_plan_name     = "plan-200700198"

# appservice_list = {
#     app-service_1 = {
#         "appservice_name"          = "zgebs-wb-dev-fcsd-wapp-ne-0198"
#         "app_service_plan_name"     = "plan-289123301204"
#     }
#     app-service_2 = {
#         "appservice_name"          = "zgebs-wb-dev-nwp-wapp-ne-0299"
#         "app_service_plan_name"     = "plan-289123301204"
#     }
#     app-service_3 = {
#         "appservice_name"          = "zgebs-wb-dev-zhrz-wapp-ne-0398"
#         "app_service_plan_name"     = "plan-289123301204"
#     }
#     app-service_4 = {
#         "appservice_name"          = "zgebs-wb-dev-lpa-wapp-ne-0498"
#         "app_service_plan_name"     = "plan-289123301204"
#     }
#     app-service_5 = {
#         "appservice_name"          = "zgebs-wb-dev-dgv-wapp-ne-0598"
#         "app_service_plan_name"     = "plan-289123301204"
#     }
# }

# private_connection_dgv_name = "private-connection-name-dgv"

# private_endpoint_dgv_name = "zgebs-wb-dev-dgowapp-pe-ne"

# dns_zone_dgv_name = "privatelink.azurewebsites.net"

# dns_zone_virtual_network_link_dgv_name = "virtual-net-link-dgv-001"

# virtual_network_name = "workbench-dev-neu-vnet"

# resource_group_name_network = "zgebs-workbench-dev-neu-vnet-rg"

# subnet_snet_webin_name = "zgebs-wb-dev-snet-webin-ne01"

# network_interface_dgv_name = "zegebs-wb-dev-dgowapp-nic-ne-01"

# subnet_snet_webout_name = "zgebs-wb-dev-snet-webout-ne01"

appservice_api_webapp_name = "zgebs-wb-dev-api-wapp-ne-9897"

# private_endpoint_api_name = "zgebs-wb-dev-apiwapp-pe-ne"

# private_connection_api_name = "private-connection-name-api"

# dns_zone_api_name = "privatelink.azurewebsites.net"

# dns_zone_virtual_network_link_api_name = "virtual-net-link-api-001"

# network_interface_api_name = "zegebs-wb-dev-apiwapp-nic-ne-01"


appservice_fcsd_webapp_name = "zgebs-wb-dev-fcsd-wapp-ne-9897"

# private_endpoint_fcsd_name = "zgebs-wb-dev-fcsdwapp-pe-ne"

# private_connection_fcsd_name = "private-connection-name-fcsd"

# dns_zone_fcsd_name = "privatelink.azurewebsites.net"

# dns_zone_virtual_network_link_fcsd_name = "virtual-net-link-fcsd-001"

# network_interface_fcsd_name = "zegebs-wb-dev-fcsdwapp-nic-ne-01"



appservice_lpa_webapp_name = "zgebs-wb-dev-lpa-wapp-ne-9897"

# private_endpoint_lpa_name = "zgebs-wb-dev-lpawapp-pe-ne"

# private_connection_lpa_name = "private-connection-name-lpa"

# dns_zone_lpa_name = "privatelink.azurewebsites.net"

# dns_zone_virtual_network_link_lpa_name = "virtual-net-link-lpa-001"

# network_interface_lpa_name = "zegebs-wb-dev-lpawapp-nic-ne-01"


appservice_mzsa_webapp_name = "zgebs-wb-dev-mzsa-wapp-ne-9897"

# private_endpoint_mzsa_name = "zgebs-wb-dev-mzsawapp-pe-ne"

# private_connection_mzsa_name = "private-connection-name-mzsa"

# dns_zone_mzsa_name = "privatelink.azurewebsites.net"

# dns_zone_virtual_network_link_mzsa_name = "virtual-net-link-mzsa-001"

# network_interface_mzsa_name = "zegebs-wb-dev-mzsawapp-nic-ne-01"


appservice_nwp_webapp_name = "zgebs-wb-dev-nwp-wapp-ne-9897"

# private_endpoint_nwp_name = "zgebs-wb-dev-nwpwapp-pe-ne"

# private_connection_nwp_name = "private-connection-name-nwp"

# dns_zone_nwp_name = "privatelink.azurewebsites.net"

# dns_zone_virtual_network_link_nwp_name = "virtual-net-link-nwp-001"

# network_interface_nwp_name = "zegebs-wb-dev-nwpwapp-nic-ne-01"


appservice_zhrz_webapp_name = "zgebs-wb-dev-zhrz-wapp-ne-9897"

# private_endpoint_zhrz_name = "zgebs-wb-dev-zhrzwapp-pe-ne"

# private_connection_zhrz_name = "private-connection-name-zhrz"

# dns_zone_zhrz_name = "privatelink.azurewebsites.net"

# dns_zone_virtual_network_link_zhrz_name = "virtual-net-link-zhrz-001"

# network_interface_zhrz_name = "zegebs-wb-dev-zhrzwapp-nic-ne-01"



#################################
# key vault
##################################


resource_group_name_kv = "zgebs-workbench-dev-keyvault-rg"

# location = "north europe"

key_vault_name = "zgebs-wb-dev-shrdkv-9897"

# kv_endpoint_name = "zgebs-wb-dev-shrdkv-pr-198"

# kv_private_service_connection = "service-connection-kv-001"

# kv_dns_a_record_name = "dns-a-record-001"

# virtual_network_name = "workbench-dev-neu-vnet"

# resource_group_name_network = "zgebs-workbench-dev-neu-vnet-rg"

subnet_snet_shared_ds_name = "zgebs-wb-dev-snet-shared-ne01"


#################################
# function app
##################################


# resource_group_name_app = "zgebs-workbench-dev-application-rg"
# resource_group_name = "zgebs-workbench-dev-storage-rg"
# location            = "north europe"
# sku_name            = "P1v2"
# storage_account_name = "zgbswbdevstorage1123"
# service_plan_id = "${module.app-service.azurerm_service_plan.app.id}"

# function_app_list = {
#     function_app_1 = {
#         "function_app_name"          = "zgebs-wb-dev-myz-fapp-ne-0198"
#         "app_service_plan_name"     = "plan-200700198"
#     }
#     function_app_2 = {
#         "function_app_name"          = "zgebs-wb-dev-myz-func0198"
#         "app_service_plan_name"     = "plan-200700198"
#     }
#     function_app_3 = {
#         "function_app_name"          = "zgebs-wb-dev-rwb-fapp-ne-0298"
#         "app_service_plan_name"     = "plan-200700198"
#     }
#     function_app_4 = {
#         "function_app_name"          = "zgebs-wb-dev-myz-func0298"
#         "app_service_plan_name"     = "plan-200700198"
#     }
# }


#################################
#  app insights
##################################

application_insights_name = "zgebs-wb-dev-shared-ai-ne01"
log_analytics_workspace_name = "zgebs-web-dev-law-ne01"
# resource_group_name_app = "zgebs-workbench-dev-application-rg"
