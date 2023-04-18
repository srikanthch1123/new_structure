# data "azurerm_resource_group" "networkds" {
#   name     = var.resource_group_name_network
# }

# data "azurerm_virtual_network" "vnetds" {
#   name                = var.virtual_network_name
#   resource_group_name = data.azurerm_resource_group.networkds.name
# }

resource "azurerm_resource_group" "network" {
  name     = var.resource_group_name_network
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.network.location
  resource_group_name = azurerm_resource_group.network.name
}

resource "azurerm_subnet" "snet_shared" {
  name                 = var.subnet_snet_shared_name
  resource_group_name  = azurerm_resource_group.network.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_snet_shared_address_prefixes
  enforce_private_link_endpoint_network_policies = true
  # service_endpoints = var.service_endpoints
}

resource "azurerm_subnet" "snet_webout" {
  name                 = var.subnet_snet_webout_name
  resource_group_name  = azurerm_resource_group.network.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.snet_webout_address_prefixes
  enforce_private_link_endpoint_network_policies = true
  # service_endpoints = var.service_endpoints
  delegation {

    name = "delegation"

    service_delegation {
      name    = "Microsoft.Web/serverFarms"
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action"]
    }
  }
}

resource "azurerm_subnet" "snet_webin" {
  name                 = var.subnet_snet_webin_name
  resource_group_name  = azurerm_resource_group.network.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_snet_webin_address_prefixes
  enforce_private_link_endpoint_network_policies = true
  service_endpoints = ["Microsoft.Web"]
}

resource "azurerm_subnet" "snet_apim" {
  name                 = var.subnet_snet_apim_name
  resource_group_name  = azurerm_resource_group.network.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_snet_apim_address_prefixes
  enforce_private_link_endpoint_network_policies = true
  # service_endpoints = var.service_endpoints
}

resource "azurerm_route_table" "rt" {
  name                = var.route_table_name
  location            = azurerm_resource_group.network.location
  resource_group_name = azurerm_resource_group.network.name

  route {
    name                   = "example"
    address_prefix         = "10.100.0.0/14"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.10.1.1"
  }
}

resource "azurerm_subnet_route_table_association" "srt" {
  subnet_id      = azurerm_subnet.snet_shared.id
  route_table_id = azurerm_route_table.rt.id
}

resource "azurerm_subnet_route_table_association" "srt_webout" {
  subnet_id      = azurerm_subnet.snet_webout.id
  route_table_id = azurerm_route_table.rt.id
}

resource "azurerm_subnet_route_table_association" "srt_webin" {
  subnet_id      = azurerm_subnet.snet_webin.id
  route_table_id = azurerm_route_table.rt.id
}

resource "azurerm_subnet_route_table_association" "srt_apim" {
  subnet_id      = azurerm_subnet.snet_apim.id
  route_table_id = azurerm_route_table.rt.id
}


resource "azurerm_network_security_group" "nsg" {
  name                = var.network_security_group_name
  location            = azurerm_resource_group.network.location
  resource_group_name = azurerm_resource_group.network.name

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_subnet_network_security_group_association" "snsg" {
  subnet_id                 = azurerm_subnet.snet_shared.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

resource "azurerm_subnet_network_security_group_association" "snsg_webout" {
  subnet_id                 = azurerm_subnet.snet_webout.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

resource "azurerm_subnet_network_security_group_association" "snsg_webin" {
  subnet_id                 = azurerm_subnet.snet_webin.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

resource "azurerm_subnet_network_security_group_association" "snsg_apim" {
  subnet_id                 = azurerm_subnet.snet_apim.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}



