# variable "iplist" {
#   type = list(string)
#   default = [ "nitinPIPone","nitinPIPtwo","nitinPIPthree" ]
# }

# resource "azurerm_resource_group" "example" {
#   name     = "nitin-rg"
#   location = "eastus"
# }

# resource "azurerm_public_ip" "example" {
#   name                = var.iplist[count.index]
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   allocation_method   = "Static"
#   count = 3
#   tags = {
#     environment = "Production"
#   }
# }

# output "pubip1" {
#   value = azurerm_public_ip.example[*].ip_address
# }

# #Splat expression [*] to extract values from a list of attributes/map. So it will fetch that particular attribute from every value of list.