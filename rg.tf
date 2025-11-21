# resource "azurerm_resource_group" "example" {
#   name     = "nitin-rg1"
#   location = "West Europe"
# }
# resource "azurerm_virtual_network" "example" {
#   name                = "nitin-network"
#   location            = azurerm_resource_group.example.location  #Argument/Attribute Reference
#   resource_group_name = azurerm_resource_group.example.name
#   address_space       = ["10.100.0.0/16"]

#   tags = {
#     environment = "Production"
#   }
# }
# resource "azurerm_public_ip" "example" {
#   name                = "nitin-PublicIp1"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }
# resource "azurerm_subnet" "example" {
#   name                 = "nitin-subnet"
#   resource_group_name  = azurerm_resource_group.example.name
#   virtual_network_name = azurerm_virtual_network.example.name
#   address_prefixes     = ["10.100.1.0/24"]
# }
# resource "azurerm_network_interface" "example" {
#   name                = "nitin-nic"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   ip_configuration {
#     name                          = "nitinipconfig"
#     subnet_id                     = azurerm_subnet.example.id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id = azurerm_public_ip.example.id
#   }
# }
