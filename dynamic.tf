# resource "azurerm_resource_group" "example" {
#   name     = "VNet-Nitin"
#   location = "West Europe"
# }

# variable "subnet_info" {
#   type = list(object({
#     namesub = string
#     address_prefixes = list(string)
#   }))
#   default = [ {
#     namesub = "subnet1"
#     address_prefixes = [ "10.0.1.0/24" ]
#   },{
#     namesub = "subnet2"
#     address_prefixes = ["10.0.2.0/24"]
#   } ]
# }

# resource "azurerm_virtual_network" "example" {
#   name                = "Nitin-network"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
#   address_space       = ["10.0.0.0/16"]
#   dns_servers         = ["10.0.0.4", "10.0.0.5"]

#   dynamic "subnet" {
#     for_each = var.subnet_info
#     content {
#       name = subnet.value.namesub
#       address_prefixes = subnet.value.address_prefixes
#     }
#   }
#   tags = {
#     environment = "Production"
#   }
# }
