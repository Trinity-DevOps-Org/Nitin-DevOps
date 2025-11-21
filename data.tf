# data "azurerm_resource_group" "example" {
#   name = "nitin-portal-rg"
# }

# resource "azurerm_public_ip" "example" { 
#   name                = "nitinIP"
#   resource_group_name = data.azurerm_resource_group.example.name
#   location            = data.azurerm_resource_group.example.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }