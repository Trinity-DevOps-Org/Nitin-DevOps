# variable "rglist" {
#   type = list(any)
#   default = [ "nitin-rg1","nitin-rg2","nitin-rg3" ]
# }

# resource "azurerm_resource_group" "example" {
#     for_each = toset(var.rglist)
#     name = each.key         #each.value can also be written here
#     location = "eastus"
# }

# output "rginfo" {
#   value = azurerm_resource_group.example
# }
