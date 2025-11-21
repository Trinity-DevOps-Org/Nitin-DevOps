# resource "azurerm_resource_group" "example" {
#   name     = "nitin"
#   location = "eastus"
# }

# resource "azurerm_virtual_network" "example" {
#   name                = "nitin-network"
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
# }

# resource "azurerm_subnet" "example" {
#   name                 = "internal"
#   resource_group_name  = azurerm_resource_group.example.name
#   virtual_network_name = azurerm_virtual_network.example.name
#   address_prefixes     = ["10.0.2.0/24"]
# }

# resource "azurerm_public_ip" "example" {
#   name                = "nitinPIP"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }

# resource "azurerm_network_interface" "example" {
#   name                = "nitin-nic"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.example.id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id = azurerm_public_ip.example.id
#   }
# }

# resource "azurerm_linux_virtual_machine" "example" {
#   name                = "nitin-machine"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   size                = "Standard_F2"
#   admin_username      = "adminuser"
#   admin_password = "Pa$$w0rd@6469"
#   disable_password_authentication = false 
#   network_interface_ids = [
#     azurerm_network_interface.example.id,
#   ]
#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-jammy"
#     sku       = "22_04-lts"
#     version   = "latest"
#   }
# }

# resource "azurerm_network_security_group" "example" {
#   name                = "nitinSG1"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   security_rule {
#     name                       = "test123"
#     priority                   = 100
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = "22"
#     source_address_prefix      = "*"
#     destination_address_prefix = "*"
#   }
#   tags = {
#     environment = "Production"
#   }
# }

# resource "azurerm_subnet_network_security_group_association" "example" {
#   subnet_id                 = azurerm_subnet.example.id
#   network_security_group_id = azurerm_network_security_group.example.id
# }
