# resource "azurerm_resource_group" "example" {
#   name     = "nitin-${var.rgname}"
#   location = var.rgloc
# }

# resource "azurerm_public_ip" "example" {
#   name                = "nitinIP"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }

# output "pubip" {
#   value = azurerm_public_ip.example.ip_address
#   sensitive = true
# }
# output "rgid" {
#   value = azurerm_resource_group.example.id
# }
# output "location" {
#   value = azurerm_public_ip.example.location
#   sensitive = true
# }